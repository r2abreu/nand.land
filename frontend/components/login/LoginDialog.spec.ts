import { shallowMount } from "@vue/test-utils";
import { describe, vi, it } from "vitest";
import LoginDialog from "./LoginDialog.vue";

describe("LoginDialog", () => {
  it("mounts", () => {
    const wrapper = shallowMount(LoginDialog);
  });
});
