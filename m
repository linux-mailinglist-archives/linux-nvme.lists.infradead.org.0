Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CB6755BA
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/F928fCsBKbT4M9y4buBYn4ti/902Is8hgTsBp+piQ=; b=T6l6+jQUwwpoVB
	2/8bIXklN4X5Y+k1rl2iaUsMu2EfU6K2s3ZtQM2UsoSqCB4Td1EZsdhcyx7e8Pq8K4qjXoQpy/gz3
	enNMzE/ndV3iJfPidSfk1QylHaHtJfvfadpM9FJ6woRRaG9rad6k9DkBEehsqhF3f4z0HUyUvyv1w
	cNDb1Ux6urNtFP1wuoPeW/NJW/UuAdQ80IdlkHFZXnqMwne4bEsG1KASlm/wj4T7DzUdBpZ+Ysq77
	TLvUPUuwrV/gaP64bdtG/epb6tnRb5shlRO7XVG00b5yvMj95st+tMDz+x83RymbISo27yRgrnmgy
	mciLUEYDEjgTsv0wT3Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhXh-0007If-Q5; Thu, 25 Jul 2019 17:28:37 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhT8-0000IM-SZ
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:24:01 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSv-0001JE-V9; Thu, 25 Jul 2019 11:23:53 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSu-0001n5-TK; Thu, 25 Jul 2019 11:23:40 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Thu, 25 Jul 2019 11:23:20 -0600
Message-Id: <20190725172335.6825-2-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725172335.6825-1-logang@deltatee.com>
References: <20190725172335.6825-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, Chaitanya.Kulkarni@wdc.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com,
 gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=unavailable
 autolearn_force=no version=3.4.2
Subject: [PATCH v6 01/16] chardev: factor out cdev_lookup() helper
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_102355_448309_40798BF4 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Create a new helper out of the code in chrdev_open() which looks up
a struct cdev from a struct inode.

This will be necessary to create a cdev_get_by_path() which is
similar to blkdev_get_by_path() and is required to allow NVMe-OF
passthru to lookup an NVMe controller cdev from a path.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
---
 fs/char_dev.c | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/fs/char_dev.c b/fs/char_dev.c
index 00dfe17871ac..5cc53bd5f654 100644
--- a/fs/char_dev.c
+++ b/fs/char_dev.c
@@ -367,12 +367,8 @@ void cdev_put(struct cdev *p)
 	}
 }
 
-/*
- * Called every time a character special file is opened
- */
-static int chrdev_open(struct inode *inode, struct file *filp)
+static struct cdev *cdev_lookup(struct inode *inode)
 {
-	const struct file_operations *fops;
 	struct cdev *p;
 	struct cdev *new = NULL;
 	int ret = 0;
@@ -385,7 +381,7 @@ static int chrdev_open(struct inode *inode, struct file *filp)
 		spin_unlock(&cdev_lock);
 		kobj = kobj_lookup(cdev_map, inode->i_rdev, &idx);
 		if (!kobj)
-			return -ENXIO;
+			return ERR_PTR(-ENXIO);
 		new = container_of(kobj, struct cdev, kobj);
 		spin_lock(&cdev_lock);
 		/* Check i_cdev again in case somebody beat us to it while
@@ -402,7 +398,23 @@ static int chrdev_open(struct inode *inode, struct file *filp)
 	spin_unlock(&cdev_lock);
 	cdev_put(new);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
+
+	return p;
+}
+
+/*
+ * Called every time a character special file is opened
+ */
+static int chrdev_open(struct inode *inode, struct file *filp)
+{
+	const struct file_operations *fops;
+	struct cdev *p;
+	int ret = 0;
+
+	p = cdev_lookup(inode);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
 
 	ret = -ENXIO;
 	fops = fops_get(p->ops);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
