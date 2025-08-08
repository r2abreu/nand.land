import {
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  OneToMany,
  Entity,
  Relation,
  UpdateDateColumn,
} from "typeorm";
import { User } from "src/user/entities/user.entity";
import { Section } from "./section.entity";

@Entity()
export class Course {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  description: string;

  @OneToMany(() => User, (user) => user.course)
  users: Relation<User[]>;

  @OneToMany(() => User, (user) => user.course)
  sections: Relation<Section[]>;

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;
}
