# 🌐 Home Assistant Add-on: Homarr Server 🚀

## NOTE: This repo is an attempt to update the ha-homarr-server addon for Home Assistant into the new Homarr v1 architecture. It is not yet functional.

Welcome to the **Homarr Server for Home Assistant** repository! This add-on is designed to host the Homarr dashboard independently within your Home Assistant environment, providing easy and direct access to your self-hosted dashboard.

## 🎉 Features

- **Independent Hosting**: Seamlessly runs Homarr as a standalone service within Home Assistant.
- **Direct Access**: Homarr is available at `http://<your-home-assistant-ip>:7575`.
- **Persistent Storage**: Configurations and data are preserved across restarts.
- **Continuous Data Sync**: Regular synchronization ensures data integrity and up-to-date backups.

## 💡 About Homarr
g
Homarr is a versatile, self-hosted dashboard that allows you to centralize and manage access to your web services and frequently visited websites. Customize it to create a personal or home hub for easy access to all your essential online resources. Read more about Homarr [here](https://homarr.dev/).

## 🚀 Quick Start

1. **Install the Add-on**: Add this add-on to your Home Assistant instance from the add-on store.
2. **Run**: Start the add-on to get Homarr up and running on port 7575.
3. **Access**: Open your browser and navigate to `http://<your-home-assistant-ip>:7575` to access your Homarr dashboard.

Your files are safely backed up to `/share` in your Home Assistant installation. 

## 🛠 Installation

1. Open your Home Assistant Supervisor paneland go to the Add-on store.
2. Add this repository URL to your add-on store or you can click this button

    [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fstefan2305%2Fha-homarr-server)

3. Install the "Homarr Server" add-on.
4. Start the add-on and check the logs to ensure everything is running smoothly.
5. Access Homarr at `http://<your-home-assistant-ip>:7575`.

## Updating

Whenever there's an update to Homarr you can try updating the addon by rebuilding on the addon-page in Home Assistant. However, there is no guarantee that it will work. Please open an issue if you face difficulties after upgrading.

## 📚 Documentation & Support

For more detailed setup and configuration instructions, visit [Homarr's official documentation](https://homarr.dev/docs/about).

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/Wiggen94/ha-homarr-server/issues).

## 🌟 Show Your Support

Give a ⭐️ if this project helped you or if you find it interesting!

<a href="https://www.buymeacoffee.com/croome" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
