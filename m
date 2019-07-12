Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0952567329
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 18:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9IvpznqWxulINLudelhVQxHa5Y0dVVL/1zIlNptZH4=; b=u0mYxrqutIMFxo
	CoYL7GZ4I7WsZk4lugniOy4F6zuE1v5djtI9FlFMnbCkqqf9shuxeMil4F/eYSsKk+CDOHlpugVO8
	Zn75AWASrYDwRnYTfVB8e5rFG3deWfWQERv60Kd1PnTupfPodpnGHWCWvqD4d/VR+8NYf9ZZUALUz
	drTHZnGFQxSir1Y9vxqpw0JRjnn/k3vMzKvBvvt5yOIOz878FgPfPWy3LKZZ5WjlbjZHAxl8poHd7
	mbr4fAFK0WXeXrxbnMp/e26VSssXN6jhdOyMJAHM2foZ3xYr4lxrUuriptJaCxA4TxlOfTrcO3Ap0
	72qbCezSj0M/bAAhMOtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyFg-0006OV-4z; Fri, 12 Jul 2019 16:18:28 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyFX-0006Nx-MP
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 16:18:21 +0000
Received: by mail-oi1-x241.google.com with SMTP id w196so7684146oie.7
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 09:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l+xPizu3H/+JTbi2nRHSskN1S9MigfaxUnbOXKp2AN0=;
 b=IgU236XZFw0271yj383c2M/luh+y4jy5JOouvIHngUInghpRkZxQ41B9/GCx6h2WGY
 hgdtaAY1ykND2uEdEX0Pep4uHjA/L2XzhEW3UiZJUH24Mcbm0THx68eKuvyT3GTCEtkQ
 pENKyy+mNhfyTfLtjmSAsZ2/APhAhLA4iP/uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l+xPizu3H/+JTbi2nRHSskN1S9MigfaxUnbOXKp2AN0=;
 b=nd+yf9hRWdDpG1uAYCb79S54x9ycRZ4KiBUdK23lwWq9kO4fS3o/5/CQI0/wl9V0WN
 TWOBE85zbjBuLlbUE/fWzOepHd6xM8WMZ51JC7fTnZz5v+shg+o/ilLqW6149xaOV2NV
 H6QQNd90Ru6l5GMc7gNHi9IOGF66ZbRQ8td1NQMWCsddOclbyhRNMU4iWERrihHZErDf
 L8BBqrGxyEpXE+RSxuuDhUP1IRypErGYxZYhwG5QndYunqvm+iWbWV5LDA+GSNNRrZVW
 VldzBNcO03npndhv8G6TSucpgoKvV/gqKhGHWmmgVOpeacwSw9vSF9Q4G6bBKtjfu+2m
 +AUg==
X-Gm-Message-State: APjAAAWUXrGD9J3n0Qw1JUzCR72HfPWtDL2WnZ10nZj3dUcsHKN51mED
 XCQ1n2EgpsDnHOsZ67PBuYH8Ps2ZZf3Hz6hyBKpCZA==
X-Google-Smtp-Source: APXvYqyqC8/yUZHEitBKBWQ0roycAT7jFIAWmmzJuXZiRz5PlNOgXU2ajbPNz4sZAexjSzZr6sTGk278sZk0QA/0WPk=
X-Received: by 2002:aca:ed04:: with SMTP id l4mr6606050oih.26.1562948297388;
 Fri, 12 Jul 2019 09:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <1310083272.27124086.1562836112586.JavaMail.zimbra@redhat.com>
 <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
 <AM0PR05MB48664657022ECA8526E3C967D1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866070FBADCCABD1F84E42ED1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <66d43fd8-18e8-8b9d-90e3-ee2804d56889@redhat.com>
 <AM0PR05MB4866DEDB9DE4379F6A6EF15BD1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
 <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
In-Reply-To: <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
From: Selvin Xavier <selvin.xavier@broadcom.com>
Date: Fri, 12 Jul 2019 21:48:06 +0530
Message-ID: <CA+sbYW0KPjJaQcoxFLny30tdMij7ycbxADCHKkVpL2LcQW-dTw@mail.gmail.com>
Subject: Re: regression: nvme rdma with bnxt_re0 broken
To: Parav Pandit <parav@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_091819_739263_A877AB6C 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Jurgens <danielj@mellanox.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Devesh Sharma <devesh.sharma@broadcom.com>, Yi Zhang <yi.zhang@redhat.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 6:22 PM Parav Pandit <parav@mellanox.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Yi Zhang <yi.zhang@redhat.com>
> > Sent: Friday, July 12, 2019 5:11 PM
> > To: Parav Pandit <parav@mellanox.com>; Selvin Xavier
> > <selvin.xavier@broadcom.com>
> > Cc: Daniel Jurgens <danielj@mellanox.com>; linux-rdma@vger.kernel.org;
> > Devesh Sharma <devesh.sharma@broadcom.com>; linux-
> > nvme@lists.infradead.org
> > Subject: Re: regression: nvme rdma with bnxt_re0 broken
> >
> > Hi Parav
> > The nvme connect still failed[1], I've paste all the dmesg log to[2], pls check it.
> >
> >
> > [1]
> > [root@rdma-perf-07 ~]$ nvme connect -t rdma -a 172.31.40.125 -s 4420 -n
> > testnqn
> > Failed to write to /dev/nvme-fabrics: Connection reset by peer
> > [2]
> > https://pastebin.com/ipvak0Sp
> >
>
> I think vlan_id is not initialized to 0xffff due to which ipv4 entry addition also failed with my patch.
> This is probably solves it. Not sure. I am not much familiar with it.
>
> Selvin,
> Can you please take a look?
>
Parav,
 Thanks for the patch. I removed the change you made in struct bnxt_qplib_gid
and added a new structure struct bnxt_qplib_gid_info to include both
gid and vlan_id.
struct bnxt_qplib_gid is used in multiple places to memcpy or compare
the 16 bytes.
Also, added vlan checking in the destroy path also. Some more cleanup
possible in
delete_gid path. That can be done once the basic issue is fixed.

Yi, Can you please test this patch and see if it is solving the issue?

Thanks,
Selvin

From 3d83613cfc5993bf9dae529ab0d4d25ddefff29b Mon Sep 17 00:00:00 2001
From: Parav Pandit <parav@mellanox.com>
Date: Fri, 12 Jul 2019 10:32:51 -0400
Subject: [PATCH] IB/bnxt_re: Honor vlan_id in GID entry comparison

GID entry consist of GID, vlan, netdev and smac.
Extend GID duplicate check companions to consider vlan_id as well
to support IPv6 VLAN based link local addresses.

Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
Signed-off-by: Parav Pandit <parav@mellanox.com>
Signed-off-by: Selvin Xavier <selvin.xavier@broadcom.com>
---
 drivers/infiniband/hw/bnxt_re/ib_verbs.c  |  7 +++++--
 drivers/infiniband/hw/bnxt_re/qplib_res.c | 17 +++++++++++++----
 drivers/infiniband/hw/bnxt_re/qplib_res.h |  2 +-
 drivers/infiniband/hw/bnxt_re/qplib_sp.c  | 14 +++++++++-----
 drivers/infiniband/hw/bnxt_re/qplib_sp.h  |  7 ++++++-
 5 files changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/infiniband/hw/bnxt_re/ib_verbs.c
b/drivers/infiniband/hw/bnxt_re/ib_verbs.c
index a91653aabf38..098ab883733e 100644
--- a/drivers/infiniband/hw/bnxt_re/ib_verbs.c
+++ b/drivers/infiniband/hw/bnxt_re/ib_verbs.c
@@ -308,6 +308,7 @@ int bnxt_re_del_gid(const struct ib_gid_attr
*attr, void **context)
  struct bnxt_re_dev *rdev = to_bnxt_re_dev(attr->device, ibdev);
  struct bnxt_qplib_sgid_tbl *sgid_tbl = &rdev->qplib_res.sgid_tbl;
  struct bnxt_qplib_gid *gid_to_del;
+ u16 vlan_id = 0xFFFF;

  /* Delete the entry from the hardware */
  ctx = *context;
@@ -317,7 +318,8 @@ int bnxt_re_del_gid(const struct ib_gid_attr
*attr, void **context)
  if (sgid_tbl && sgid_tbl->active) {
  if (ctx->idx >= sgid_tbl->max)
  return -EINVAL;
- gid_to_del = &sgid_tbl->tbl[ctx->idx];
+ gid_to_del = &sgid_tbl->tbl[ctx->idx].gid;
+ vlan_id = sgid_tbl->tbl[ctx->idx].vlan_id;
  /* DEL_GID is called in WQ context(netdevice_event_work_handler)
  * or via the ib_unregister_device path. In the former case QP1
  * may not be destroyed yet, in which case just return as FW
@@ -335,7 +337,8 @@ int bnxt_re_del_gid(const struct ib_gid_attr
*attr, void **context)
  }
  ctx->refcnt--;
  if (!ctx->refcnt) {
- rc = bnxt_qplib_del_sgid(sgid_tbl, gid_to_del, true);
+ rc = bnxt_qplib_del_sgid(sgid_tbl, gid_to_del,
+ vlan_id,  true);
  if (rc) {
  dev_err(rdev_to_dev(rdev),
  "Failed to remove GID: %#x", rc);
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_res.c
b/drivers/infiniband/hw/bnxt_re/qplib_res.c
index 37928b1111df..7f2571f7a13f 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_res.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_res.c
@@ -488,7 +488,10 @@ static int bnxt_qplib_alloc_sgid_tbl(struct
bnxt_qplib_res *res,
       struct bnxt_qplib_sgid_tbl *sgid_tbl,
       u16 max)
 {
- sgid_tbl->tbl = kcalloc(max, sizeof(struct bnxt_qplib_gid), GFP_KERNEL);
+ u16 i;
+
+ sgid_tbl->tbl = kcalloc(max, sizeof(struct bnxt_qplib_gid_info),
+ GFP_KERNEL);
  if (!sgid_tbl->tbl)
  return -ENOMEM;

@@ -500,6 +503,9 @@ static int bnxt_qplib_alloc_sgid_tbl(struct
bnxt_qplib_res *res,
  if (!sgid_tbl->ctx)
  goto out_free2;

+ for (i = 0; i < max; i++)
+ sgid_tbl->tbl[i].vlan_id = 0xffff;
+
  sgid_tbl->vlan = kcalloc(max, sizeof(u8), GFP_KERNEL);
  if (!sgid_tbl->vlan)
  goto out_free3;
@@ -526,9 +532,11 @@ static void bnxt_qplib_cleanup_sgid_tbl(struct
bnxt_qplib_res *res,
  for (i = 0; i < sgid_tbl->max; i++) {
  if (memcmp(&sgid_tbl->tbl[i], &bnxt_qplib_gid_zero,
     sizeof(bnxt_qplib_gid_zero)))
- bnxt_qplib_del_sgid(sgid_tbl, &sgid_tbl->tbl[i], true);
+ bnxt_qplib_del_sgid(sgid_tbl, &sgid_tbl->tbl[i].gid,
+     sgid_tbl->tbl[i].vlan_id, true);
  }
- memset(sgid_tbl->tbl, 0, sizeof(struct bnxt_qplib_gid) * sgid_tbl->max);
+ memset(sgid_tbl->tbl, 0, sizeof(struct bnxt_qplib_gid_info) *
+ sgid_tbl->max);
  memset(sgid_tbl->hw_id, -1, sizeof(u16) * sgid_tbl->max);
  memset(sgid_tbl->vlan, 0, sizeof(u8) * sgid_tbl->max);
  sgid_tbl->active = 0;
@@ -537,7 +545,8 @@ static void bnxt_qplib_cleanup_sgid_tbl(struct
bnxt_qplib_res *res,
 static void bnxt_qplib_init_sgid_tbl(struct bnxt_qplib_sgid_tbl *sgid_tbl,
       struct net_device *netdev)
 {
- memset(sgid_tbl->tbl, 0, sizeof(struct bnxt_qplib_gid) * sgid_tbl->max);
+ memset(sgid_tbl->tbl, 0, sizeof(struct bnxt_qplib_gid_info) *
+ sgid_tbl->max);
  memset(sgid_tbl->hw_id, -1, sizeof(u16) * sgid_tbl->max);
 }

diff --git a/drivers/infiniband/hw/bnxt_re/qplib_res.h
b/drivers/infiniband/hw/bnxt_re/qplib_res.h
index 30c42c92fac7..fbda11a7ab1a 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_res.h
+++ b/drivers/infiniband/hw/bnxt_re/qplib_res.h
@@ -111,7 +111,7 @@ struct bnxt_qplib_pd_tbl {
 };

 struct bnxt_qplib_sgid_tbl {
- struct bnxt_qplib_gid *tbl;
+ struct bnxt_qplib_gid_info *tbl;
  u16 *hw_id;
  u16 max;
  u16 active;
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.c
b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
index 48793d3512ac..40296b97d21e 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
@@ -213,12 +213,12 @@ int bnxt_qplib_get_sgid(struct bnxt_qplib_res *res,
  index, sgid_tbl->max);
  return -EINVAL;
  }
- memcpy(gid, &sgid_tbl->tbl[index], sizeof(*gid));
+ memcpy(gid, &sgid_tbl->tbl[index].gid, sizeof(*gid));
  return 0;
 }

 int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
- struct bnxt_qplib_gid *gid, bool update)
+ struct bnxt_qplib_gid *gid, u16 vlan_id, bool update)
 {
  struct bnxt_qplib_res *res = to_bnxt_qplib(sgid_tbl,
     struct bnxt_qplib_res,
@@ -236,7 +236,8 @@ int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl
*sgid_tbl,
  return -ENOMEM;
  }
  for (index = 0; index < sgid_tbl->max; index++) {
- if (!memcmp(&sgid_tbl->tbl[index], gid, sizeof(*gid)))
+ if (!memcmp(&sgid_tbl->tbl[index].gid, gid, sizeof(*gid)) &&
+     vlan_id == sgid_tbl->tbl[index].vlan_id)
  break;
  }
  if (index == sgid_tbl->max) {
@@ -262,8 +263,9 @@ int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl
*sgid_tbl,
  if (rc)
  return rc;
  }
- memcpy(&sgid_tbl->tbl[index], &bnxt_qplib_gid_zero,
+ memcpy(&sgid_tbl->tbl[index].gid, &bnxt_qplib_gid_zero,
         sizeof(bnxt_qplib_gid_zero));
+ sgid_tbl->tbl[index].vlan_id = 0xFFFF;
  sgid_tbl->vlan[index] = 0;
  sgid_tbl->active--;
  dev_dbg(&res->pdev->dev,
@@ -296,7 +298,8 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl
*sgid_tbl,
  }
  free_idx = sgid_tbl->max;
  for (i = 0; i < sgid_tbl->max; i++) {
- if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid))) {
+ if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid)) &&
+     sgid_tbl->tbl[i].vlan_id == vlan_id) {
  dev_dbg(&res->pdev->dev,
  "SGID entry already exist in entry %d!\n", i);
  *index = i;
@@ -351,6 +354,7 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl
*sgid_tbl,
  }
  /* Add GID to the sgid_tbl */
  memcpy(&sgid_tbl->tbl[free_idx], gid, sizeof(*gid));
+ sgid_tbl->tbl[free_idx].vlan_id = vlan_id;
  sgid_tbl->active++;
  if (vlan_id != 0xFFFF)
  sgid_tbl->vlan[free_idx] = 1;
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.h
b/drivers/infiniband/hw/bnxt_re/qplib_sp.h
index 0ec3b12b0bcd..b5c4ce302c61 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.h
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.h
@@ -84,6 +84,11 @@ struct bnxt_qplib_gid {
  u8 data[16];
 };

+struct bnxt_qplib_gid_info {
+ struct bnxt_qplib_gid gid;
+ u16 vlan_id;
+};
+
 struct bnxt_qplib_ah {
  struct bnxt_qplib_gid dgid;
  struct bnxt_qplib_pd *pd;
@@ -221,7 +226,7 @@ int bnxt_qplib_get_sgid(struct bnxt_qplib_res *res,
  struct bnxt_qplib_sgid_tbl *sgid_tbl, int index,
  struct bnxt_qplib_gid *gid);
 int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
- struct bnxt_qplib_gid *gid, bool update);
+ struct bnxt_qplib_gid *gid, u16 vlan_id, bool update);
 int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
  struct bnxt_qplib_gid *gid, u8 *mac, u16 vlan_id,
  bool update, u32 *index);
-- 
2.18.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
