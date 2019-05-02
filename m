Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FA2115E9
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 11:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sJQJEaPgYWW9GT6nocGGsyZQziVEQapwq6BjSjknOas=; b=HSMuu50et5CwKgwDmHz+imktbh
	GIULdVB5kxUVOor6oNSxtYjfbyQ0EGCBUg+EWc2i/1DnrW/4qh/5D40q8F3DcClyug33eMoIhtprC
	b54K3r0zfniWiqAQ7K+GrefGC6GKo2pFJ3mBExPN5XbkpuZfh24AhMZemfcUPrPiD3UCrqfGno+vT
	Qq/k85/qgTNwyC1EfR6+PVXoSxNUk240IhlIKfyTO3vjxy4vgYfAwD1jrF8X31NfaQ60SxVTzoxr0
	lpsql2IyBrNQR6UFtf1kAV7FoWPlvU2za2kAB2hKh/YPuAaKmZ+gYkgcnZcUWHnvrlWerOr+rEVmX
	613cDCcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7ZL-0004Yc-JC; Thu, 02 May 2019 08:59:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7Z9-0004QR-1D
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 08:59:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id 85so766445pgc.3
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 01:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CGcoNMFIuA2c7vDEz3xrp/PFtO6Q2y11E1/I7HpJMZA=;
 b=OD0BswP4PdkegmHLHavWbB8wIX/zxSfYJprS7PUvkY/mp5cPw899NU45XrDAcFbdXk
 CmuBzm1Qf9/WtkaPqIhXGO1wnXzr7e35Y42eQ//fYuMq7NRAIbJ2TWzAEABxe5uLSoyf
 kpW3PTQNUDUzVnZYgnvjOvnigKwA1bcyoguc6pRD1tW6D2/izizACkcSXOfSV/+Y4xGi
 twnzMfQRVdUthUGfA0uTkyelC5ygSDLg9IqV0BctDscxwFbnJgwqpiA6X98/EFobo7zn
 HC5romyhn47c8RaZLbGgvjVbO5t4j1H/S0HBhijh56NupPYSoZo1LikRnrGSQvIZyVS5
 on+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CGcoNMFIuA2c7vDEz3xrp/PFtO6Q2y11E1/I7HpJMZA=;
 b=WvcWquwLYGkyjxFHXgWr0xuWnzllqqPIChy4HMkpCmzWYY81/T9EUlXY0u6DdtE50R
 FM0Lh1r6YMOsjM4nibZbSfbG+IrFeKmq3rZdIR46YDoJ52ALd1kAoHU6MvN+hltJ/ZJO
 p4bsfwwji1iwUOBltzhYXob/rQ67x2d2+GmXEvXHQ+vVd7AwQRZrzYdl1dUj6Xvnbtr3
 eimek5u8XmX6yU5UF96tCb68OlaqviyncKKKPLoJnmeeAg+WhDvrt29z3A7Mz4Dfpcfk
 LYRDpt7MaK/dc4lHB2zBrjYdIgXxSjiw8we1hiw3Mn9fFlePZbH2fqcRsbcic9H+c8+S
 GYdg==
X-Gm-Message-State: APjAAAUSNcXmQcoKamIkASkLZSpUOowWF02xrEHNcQ9FmQg72K5xfwYL
 mg9BCWwTcUBeN4kb2x5tXjLF+wa0
X-Google-Smtp-Source: APXvYqzu9bjNnvZba1qoJ/QIm4C0H2P9bBlQBpqOnDHOfNVUeDncrHF5dJa4Lah9rrDPhrbzPhc6Sw==
X-Received: by 2002:a63:f315:: with SMTP id l21mr2700948pgh.417.1556787582342; 
 Thu, 02 May 2019 01:59:42 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id z7sm74960831pgh.81.2019.05.02.01.59.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 01:59:41 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] devcoredump: allow to create several coredump files in
 one device
Date: Thu,  2 May 2019 17:59:19 +0900
Message-Id: <1556787561-5113-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015943_079610_A42C2EC3 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The device coredump mechanism currently allows drivers to create only a
single coredump file.  If there are several binary blobs to dump, we need
to define a binary format or conver to text format in order to put them
into a single coredump file.

This provides a new function that allows drivers to create several device
coredump files in one crashed device.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/base/devcoredump.c  | 162 ++++++++++++++++++++++++++++++--------------
 include/linux/devcoredump.h |  33 +++++++++
 2 files changed, 146 insertions(+), 49 deletions(-)

diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
index 3c960a6..30ddc5e 100644
--- a/drivers/base/devcoredump.c
+++ b/drivers/base/devcoredump.c
@@ -25,14 +25,18 @@ static bool devcd_disabled;
 /* if data isn't read by userspace after 5 minutes then delete it */
 #define DEVCD_TIMEOUT	(HZ * 60 * 5)
 
-struct devcd_entry {
-	struct device devcd_dev;
-	void *data;
-	size_t datalen;
-	struct module *owner;
+struct devcd_file {
+	struct bin_attribute bin_attr;
 	ssize_t (*read)(char *buffer, loff_t offset, size_t count,
 			void *data, size_t datalen);
 	void (*free)(void *data);
+};
+
+struct devcd_entry {
+	struct device devcd_dev;
+	struct devcd_file *files;
+	int num_files;
+	struct module *owner;
 	struct delayed_work del_wk;
 	struct device *failing_dev;
 };
@@ -45,8 +49,15 @@ static struct devcd_entry *dev_to_devcd(struct device *dev)
 static void devcd_dev_release(struct device *dev)
 {
 	struct devcd_entry *devcd = dev_to_devcd(dev);
+	int i;
+
+	for (i = 0; i < devcd->num_files; i++) {
+		struct devcd_file *file = &devcd->files[i];
+
+		file->free(file->bin_attr.private);
+	}
+	kfree(devcd->files);
 
-	devcd->free(devcd->data);
 	module_put(devcd->owner);
 
 	/*
@@ -64,9 +75,15 @@ static void devcd_dev_release(struct device *dev)
 static void devcd_del(struct work_struct *wk)
 {
 	struct devcd_entry *devcd;
+	int i;
 
 	devcd = container_of(wk, struct devcd_entry, del_wk.work);
 
+	for (i = 0; i < devcd->num_files; i++) {
+		device_remove_bin_file(&devcd->devcd_dev,
+				       &devcd->files[i].bin_attr);
+	}
+
 	device_del(&devcd->devcd_dev);
 	put_device(&devcd->devcd_dev);
 }
@@ -75,10 +92,11 @@ static ssize_t devcd_data_read(struct file *filp, struct kobject *kobj,
 			       struct bin_attribute *bin_attr,
 			       char *buffer, loff_t offset, size_t count)
 {
-	struct device *dev = kobj_to_dev(kobj);
-	struct devcd_entry *devcd = dev_to_devcd(dev);
+	struct devcd_file *file =
+		container_of(bin_attr, struct devcd_file, bin_attr);
 
-	return devcd->read(buffer, offset, count, devcd->data, devcd->datalen);
+	return file->read(buffer, offset, count, bin_attr->private,
+			  bin_attr->size);
 }
 
 static ssize_t devcd_data_write(struct file *filp, struct kobject *kobj,
@@ -93,25 +111,6 @@ static ssize_t devcd_data_write(struct file *filp, struct kobject *kobj,
 	return count;
 }
 
-static struct bin_attribute devcd_attr_data = {
-	.attr = { .name = "data", .mode = S_IRUSR | S_IWUSR, },
-	.size = 0,
-	.read = devcd_data_read,
-	.write = devcd_data_write,
-};
-
-static struct bin_attribute *devcd_dev_bin_attrs[] = {
-	&devcd_attr_data, NULL,
-};
-
-static const struct attribute_group devcd_dev_group = {
-	.bin_attrs = devcd_dev_bin_attrs,
-};
-
-static const struct attribute_group *devcd_dev_groups[] = {
-	&devcd_dev_group, NULL,
-};
-
 static int devcd_free(struct device *dev, void *data)
 {
 	struct devcd_entry *devcd = dev_to_devcd(dev);
@@ -157,7 +156,6 @@ static struct class devcd_class = {
 	.name		= "devcoredump",
 	.owner		= THIS_MODULE,
 	.dev_release	= devcd_dev_release,
-	.dev_groups	= devcd_dev_groups,
 	.class_groups	= devcd_class_groups,
 };
 
@@ -234,30 +232,60 @@ static ssize_t devcd_read_from_sgtable(char *buffer, loff_t offset,
 				  offset);
 }
 
+static struct devcd_entry *devcd_alloc(struct dev_coredumpm_bulk_data *files,
+				       int num_files, gfp_t gfp)
+{
+	struct devcd_entry *devcd;
+	int i;
+
+	devcd = kzalloc(sizeof(*devcd), gfp);
+	if (!devcd)
+		return NULL;
+
+	devcd->files = kcalloc(num_files, sizeof(devcd->files[0]), gfp);
+	if (!devcd->files) {
+		kfree(devcd);
+		return NULL;
+	}
+	devcd->num_files = num_files;
+
+	for (i = 0; i < devcd->num_files; i++) {
+		struct devcd_file *file = &devcd->files[i];
+
+		sysfs_bin_attr_init(&file->bin_attr);
+		file->bin_attr.attr.name = files[i].name;
+
+		file->bin_attr.attr.mode = 0600;
+		file->bin_attr.size = files[i].datalen;
+		file->bin_attr.private = files[i].data;
+		file->bin_attr.read = devcd_data_read;
+		file->bin_attr.write = devcd_data_write;
+
+		file->read = files[i].read;
+		file->free = files[i].free;
+	}
+
+	return devcd;
+}
+
 /**
- * dev_coredumpm - create device coredump with read/free methods
+ * dev_coredumpm_bulk - create a number of device coredump files
  * @dev: the struct device for the crashed device
  * @owner: the module that contains the read/free functions, use %THIS_MODULE
- * @data: data cookie for the @read/@free functions
- * @datalen: length of the data
  * @gfp: allocation flags
- * @read: function to read from the given buffer
- * @free: function to free the given buffer
+ * @files: the configuration of device coredump files
+ * @num_files: the number of device coredump files to create
  *
- * Creates a new device coredump for the given device. If a previous one hasn't
- * been read yet, the new coredump is discarded. The data lifetime is determined
- * by the device coredump framework and when it is no longer needed the @free
- * function will be called to free the data.
+ * This function allows drivers to create several device coredump files in
+ * one crashed device.
  */
-void dev_coredumpm(struct device *dev, struct module *owner,
-		   void *data, size_t datalen, gfp_t gfp,
-		   ssize_t (*read)(char *buffer, loff_t offset, size_t count,
-				   void *data, size_t datalen),
-		   void (*free)(void *data))
+void dev_coredumpm_bulk(struct device *dev, struct module *owner, gfp_t gfp,
+			struct dev_coredumpm_bulk_data *files, int num_files)
 {
 	static atomic_t devcd_count = ATOMIC_INIT(0);
 	struct devcd_entry *devcd;
 	struct device *existing;
+	int i;
 
 	if (devcd_disabled)
 		goto free;
@@ -272,15 +300,11 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 	if (!try_module_get(owner))
 		goto free;
 
-	devcd = kzalloc(sizeof(*devcd), gfp);
+	devcd = devcd_alloc(files, num_files, gfp);
 	if (!devcd)
 		goto put_module;
 
 	devcd->owner = owner;
-	devcd->data = data;
-	devcd->datalen = datalen;
-	devcd->read = read;
-	devcd->free = free;
 	devcd->failing_dev = get_device(dev);
 
 	device_initialize(&devcd->devcd_dev);
@@ -292,6 +316,12 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 	if (device_add(&devcd->devcd_dev))
 		goto put_device;
 
+	for (i = 0; i < devcd->num_files; i++) {
+		if (device_create_bin_file(&devcd->devcd_dev,
+					   &devcd->files[i].bin_attr))
+			/* nothing - some files will be missing */;
+	}
+
 	if (sysfs_create_link(&devcd->devcd_dev.kobj, &dev->kobj,
 			      "failing_device"))
 		/* nothing - symlink will be missing */;
@@ -309,7 +339,41 @@ void dev_coredumpm(struct device *dev, struct module *owner,
  put_module:
 	module_put(owner);
  free:
-	free(data);
+	for (i = 0; i < num_files; i++)
+		files[i].free(files[i].data);
+}
+EXPORT_SYMBOL_GPL(dev_coredumpm_bulk);
+
+/**
+ * dev_coredumpm - create device coredump with read/free methods
+ * @dev: the struct device for the crashed device
+ * @owner: the module that contains the read/free functions, use %THIS_MODULE
+ * @data: data cookie for the @read/@free functions
+ * @datalen: length of the data
+ * @gfp: allocation flags
+ * @read: function to read from the given buffer
+ * @free: function to free the given buffer
+ *
+ * Creates a new device coredump for the given device. If a previous one hasn't
+ * been read yet, the new coredump is discarded. The data lifetime is determined
+ * by the device coredump framework and when it is no longer needed the @free
+ * function will be called to free the data.
+ */
+void dev_coredumpm(struct device *dev, struct module *owner,
+		   void *data, size_t datalen, gfp_t gfp,
+		   ssize_t (*read)(char *buffer, loff_t offset, size_t count,
+				   void *data, size_t datalen),
+		   void (*free)(void *data))
+{
+	struct dev_coredumpm_bulk_data bulk_data = {
+		.name = "data",
+		.data = data,
+		.datalen = datalen,
+		.read = read,
+		.free = free,
+	};
+
+	dev_coredumpm_bulk(dev, owner, gfp, &bulk_data, 1);
 }
 EXPORT_SYMBOL_GPL(dev_coredumpm);
 
diff --git a/include/linux/devcoredump.h b/include/linux/devcoredump.h
index 269521f..9addb6f 100644
--- a/include/linux/devcoredump.h
+++ b/include/linux/devcoredump.h
@@ -65,6 +65,26 @@ static inline void _devcd_free_sgtable(struct scatterlist *table)
 	kfree(delete_iter);
 }
 
+/**
+ * struct dev_coredumpm_bulk_data - Data used for dev_coredumpm_bulk
+ *
+ * @name: coredump file name
+ * @data: data cookie for the @read/@free functions
+ * @datalen: length of the data
+ * @read: function to read from the given buffer
+ * @free: function to free the given buffer
+ *
+ * An array of this structure is passed as argument to dev_coredumpm_bulk, and
+ * used to describe each device coredump.
+ */
+struct dev_coredumpm_bulk_data {
+	char *name;
+	void *data;
+	size_t datalen;
+	ssize_t (*read)(char *buffer, loff_t offset, size_t count,
+			void *data, size_t datalen);
+	void (*free)(void *data);
+};
 
 #ifdef CONFIG_DEV_COREDUMP
 void dev_coredumpv(struct device *dev, void *data, size_t datalen,
@@ -76,6 +96,9 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 				   void *data, size_t datalen),
 		   void (*free)(void *data));
 
+void dev_coredumpm_bulk(struct device *dev, struct module *owner, gfp_t gfp,
+			struct dev_coredumpm_bulk_data *files, int num_files);
+
 void dev_coredumpsg(struct device *dev, struct scatterlist *table,
 		    size_t datalen, gfp_t gfp);
 #else
@@ -95,6 +118,16 @@ dev_coredumpm(struct device *dev, struct module *owner,
 	free(data);
 }
 
+static inline
+void dev_coredumpm_bulk(struct device *dev, struct module *owner, gfp_t gfp,
+			struct dev_coredumpm_bulk_data *files, int num_files)
+{
+	int i;
+
+	for (i = 0; i < num_files; i++)
+		files[i].free(files[i].data);
+}
+
 static inline void dev_coredumpsg(struct device *dev, struct scatterlist *table,
 				  size_t datalen, gfp_t gfp)
 {
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
