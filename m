Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3741A33C09
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 01:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFnDuiU1OorkDCGOC5PZHIIQWp5bapoX3GefcdKWHeI=; b=mcGJY+m0W/PfsE
	v5CNJWdcDOu6HDFI7Aq8NxIcDVFYTDl/icp9sGmziVhcMwtdbtMRYIF+TWN/4sNNtxWicyg0G8xkp
	a9kMZC5p6UJuJy71Jk2PtuGavJv4CicHw8YcmdB3tnW3WyzDbEcnUn6FKodyVIpyKTDhCVfoJkOwl
	v0fJ0WJc7ZDYzmG/qfePjMMR/hN1Yc8eqnjKmlkIFYrMzDQ2+BWrENQQez8GRYUuk7JnzQBOXggfo
	wpNqbzCWpy8CuFQlP/dm06W3/1F1bsIpxoRiL8wFQYIFjfD2sxEfdjKkKb8teZjFEYH1jS+3OH8qs
	wPW5H3Uj8iZaQ8zPBJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwbF-0007GM-7E; Mon, 03 Jun 2019 23:42:45 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwbA-0007G1-FO
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 23:42:42 +0000
Received: by mail-qk1-x743.google.com with SMTP id c11so1647631qkk.8
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 16:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q34hiie00I0QvvuvhEWlKQjduJtR3/oNs+vw/V6cmoY=;
 b=KJ+sANO9hGBjUjFkJS2nY47qQxRu98k0JuzZQyErIhHbEDSuKyLa8Yb0SADHWddKIi
 ami0FeyAKeSqMVkKuEN2PwJbzj5QBxkWOfc8sST0iyGSlYMMLqU9EDOk31NoqOjeXCKu
 gRLDxkNMES5ZgPm7lqfE6Up58K06LQVk/mASU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q34hiie00I0QvvuvhEWlKQjduJtR3/oNs+vw/V6cmoY=;
 b=DNfT//CaUZv9l7melCj2eMpq932KYNKnGCfax6h75QDra4xqIlvSll1ztJdA/41JLj
 0jIg6S1uA80W+C3VUkEJrN+kkyBveiGTx2CBiXqxF4IfpGJjUJyk5LhrSKmNhMrU5Ge9
 NiEX88aIhCdr+z3u7w5uUqYpf+IFBaMTiAsjuCGGJt1kjOAm2T8jv7IdKdzoGSnvnbfx
 7OErP+9zzwiwwWPKrqioegyF1dIDLoiB4o+1NeEaqpVu8m2yozzwMuLguaitOvvKWiLg
 pmdnWSJEV6ksIlNXXNtpkCnMOVjA6Z/4R/DbUQEeCAM8Td5CAKVCKbO1IA4hs/7XnXI0
 wPgg==
X-Gm-Message-State: APjAAAVQHXx6CGwWtXzc1h955MTvklsa4mhrYH4VXy5JdQSnHu7Fb4oC
 tYB8fhm8wCbUurVIy2XaS1sJ0VQtkTpRA3JNcE+ghA==
X-Google-Smtp-Source: APXvYqwySXCYicdHwXelSpPgxJ7n7fla0DxuZwjIH9NrxD2mRi+CYbgq1aDF/8xk6/H+j9UNwXpGoeBNHL2vUetO928=
X-Received: by 2002:a05:620a:15d3:: with SMTP id
 o19mr5431373qkm.213.1559605359113; 
 Mon, 03 Jun 2019 16:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <1559604301-14042-1-git-send-email-jalee@purestorage.com>
In-Reply-To: <1559604301-14042-1-git-send-email-jalee@purestorage.com>
From: Jaesoo Lee <jalee@purestorage.com>
Date: Mon, 3 Jun 2019 16:42:28 -0700
Message-ID: <CAJX3CtgdrbaPhFPnR13CT9mAQ8yVRyPFMjbFz01gcNz6G=2T_g@mail.gmail.com>
Subject: [PATCH v2] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, 
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_164240_603902_FC04EDAE 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Roland Dreier <roland@purestorage.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The Number of Namespaces (nn) field in the identify controller data structure is
defined as u32 and the maximum allowed value in NVMe specification is
0xFFFFFFFEUL. This change fixes the possible overflow of the DIV_ROUND_UP()
operation used in nvme_scan_ns_list() by casting the nn to u64.

Signed-off-by: Jaesoo Lee <jalee@purestorage.com>
---
Changes in v2:
  - use DIV_ROUND_UP_ULL for 32-bit system

 drivers/nvme/host/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2c43e12..4c4633b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3373,7 +3373,8 @@ static int nvme_scan_ns_list(struct nvme_ctrl
*ctrl, unsigned nn)
 {
        struct nvme_ns *ns;
        __le32 *ns_list;
-       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP(nn, 1024);
+       unsigned i, j, nsid, prev = 0;
+       unsigned num_lists = DIV_ROUND_UP_ULL((u64)nn, 1024);
        int ret = 0;

        ns_list = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
--
2.7.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
