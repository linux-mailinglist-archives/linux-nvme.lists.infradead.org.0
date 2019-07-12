Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C066734A
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 18:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uyF36zakF0lbL5Mq7wClqcAP3RTPTZXRZJR6zlALdM=; b=GlsOrRz9nRmGFg
	XYxICxspKxEV9sU905o/Jb8Pm1dimmhG7q4SFV3ILjyTYjKF+az/jXQEga5JW8NR/DsbXaUHCrP9I
	nhctjxjMXxT6bKp8iBQVnK4dWGp8+IvDbXdsjyW9DEOwAiEhCVs+kScnBpyxdQX8LBr8u4kQp1Sw2
	bdSjTAlVw+y7H4uTq2Fnug8qV4Yz54xYTiBqXxZpRhvs/ClwYrRopyqPI+YqUW36ZTe523Ugq704c
	4YHPNxwZdTj+AWsGwr9FL5c/qyMByHDBVdF2KkOCyAmhveeS0An3EtmJtG6JmPgEkwW5czPXk1Dj+
	x3vpQ2URUhKP/gfWooGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyQr-0002Kk-RL; Fri, 12 Jul 2019 16:30:01 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyQg-0002Ic-DI
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 16:29:52 +0000
Received: by mail-oi1-x241.google.com with SMTP id m202so7724136oig.6
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 09:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SHcKxWcCHAIxWtDqQqEUu85uB4tHtLH7Yjh4VUfEfZ8=;
 b=Rc7AOzjIxAeByGWEVMcy/97OEY8HfyvA/ew1RT/QPkQcSv/3N5lkqWFccNlT6oGEJj
 qs+2tvPNoQvhztz0b1sI5GVCP8sqqCJs2OtkKnUoBW8cXXlGiytKuMNPq9gc/pxHcfSc
 cY4pAeynemhVZNt0Lc9LhgQHEtrWBP/czucQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SHcKxWcCHAIxWtDqQqEUu85uB4tHtLH7Yjh4VUfEfZ8=;
 b=Ys8ZG1pXBca/2emhLKaphsdTPUOL0IXN6xK09FIkyV8xmZXlu09P6MVUFUiOkDpUXQ
 AvtBLzy6Xm8dO3N1lQ0H1z2SEsrVCsDwezC9oCYJT39WAxnByIbBQbSYDypiSTgQVA7x
 IvWyC4EPkQP0BucSL3z7mCLKMbY9Le0cpnMt/aqFpMMh97UAZuBXXkYTXq6YQEvtowb0
 9Ha7U6nDACD8OVyF0kQbQW+/csWxC8Ed9pS/VtS6x3bH/f9FAT2r7JoKOdMicPd2IH5T
 fq2UXJW9Wro6ZdCkk98A7M98Vylu7EKBnEG2D0JpJn23wcvJ/IUbpZ1IqYOVIOylFIs1
 PPQw==
X-Gm-Message-State: APjAAAW7px2/1YaFnJ1V2kJsFZF/emZharOYZBrdKSo4sKzj9MU5kDpg
 emSVD9PRs9X8itdengTRFYkHucT0bwz155VkVMMHbg==
X-Google-Smtp-Source: APXvYqzFVqDlgidoYbYNHh4/kRKUh7vqILHqlqGB3Jx4FnI3r/Wl8NZlYvmcn2Oasnos5Kd66Xlc6oJgEGyUtguyyyM=
X-Received: by 2002:aca:c48b:: with SMTP id u133mr5954456oif.95.1562948989298; 
 Fri, 12 Jul 2019 09:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR05MB48664657022ECA8526E3C967D1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866070FBADCCABD1F84E42ED1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <66d43fd8-18e8-8b9d-90e3-ee2804d56889@redhat.com>
 <AM0PR05MB4866DEDB9DE4379F6A6EF15BD1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
 <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <20190712154044.GJ27512@ziepe.ca>
In-Reply-To: <20190712154044.GJ27512@ziepe.ca>
From: Selvin Xavier <selvin.xavier@broadcom.com>
Date: Fri, 12 Jul 2019 21:59:38 +0530
Message-ID: <CA+sbYW0F6Vgpa5SQX+9ge4EwWrMkJ4kQ-psEq11S00=-L_mVhg@mail.gmail.com>
Subject: Re: regression: nvme rdma with bnxt_re0 broken
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_092950_453280_867E0AD6 
X-CRM114-Status: GOOD (  23.46  )
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
Cc: Yi Zhang <yi.zhang@redhat.com>, Parav Pandit <parav@mellanox.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Daniel Jurgens <danielj@mellanox.com>,
 Devesh Sharma <devesh.sharma@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 9:10 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Fri, Jul 12, 2019 at 12:52:24PM +0000, Parav Pandit wrote:
> >
> >
> > > From: Yi Zhang <yi.zhang@redhat.com>
> > > Sent: Friday, July 12, 2019 5:11 PM
> > > To: Parav Pandit <parav@mellanox.com>; Selvin Xavier
> > > <selvin.xavier@broadcom.com>
> > > Cc: Daniel Jurgens <danielj@mellanox.com>; linux-rdma@vger.kernel.org;
> > > Devesh Sharma <devesh.sharma@broadcom.com>; linux-
> > > nvme@lists.infradead.org
> > > Subject: Re: regression: nvme rdma with bnxt_re0 broken
> > >
> > > Hi Parav
> > > The nvme connect still failed[1], I've paste all the dmesg log to[2], pls check it.
> > >
> > >
> > > [1]
> > > [root@rdma-perf-07 ~]$ nvme connect -t rdma -a 172.31.40.125 -s 4420 -n
> > > testnqn
> > > Failed to write to /dev/nvme-fabrics: Connection reset by peer
> > > [2]
> > > https://pastebin.com/ipvak0Sp
> > >
> >
> > I think vlan_id is not initialized to 0xffff due to which ipv4 entry addition also failed with my patch.
> > This is probably solves it. Not sure. I am not much familiar with it.
> >
> > Selvin,
> > Can you please take a look?
> >
> > From 7b55e1d4500259cf7c02fb4d9fbbeb5ad1cfc623 Mon Sep 17 00:00:00 2001
> > From: Parav Pandit <parav@mellanox.com>
> > Date: Fri, 12 Jul 2019 04:34:52 -0500
> > Subject: [PATCH v1] IB/bnxt_re: Honor vlan_id in GID entry comparison
> >
> > GID entry consist of GID, vlan, netdev and smac.
> > Extend GID duplicate check companions to consider vlan_id as well
> > to support IPv6 VLAN based link local addresses.
> >
> > GID deletion based on only GID comparision is not correct.
> > It needs further fixes.
> >
> > Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
> > Change-Id: I2e026ec8065c8425ba24fad8525323d112a2f4e4
> > Signed-off-by: Parav Pandit <parav@mellanox.com>
> >  drivers/infiniband/hw/bnxt_re/qplib_res.c | 5 +++++
> >  drivers/infiniband/hw/bnxt_re/qplib_sp.c  | 7 ++++++-
> >  drivers/infiniband/hw/bnxt_re/qplib_sp.h  | 1 +
> >  3 files changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/infiniband/hw/bnxt_re/qplib_res.c b/drivers/infiniband/hw/bnxt_re/qplib_res.c
> > index 37928b1111df..216648b640ce 100644
> > +++ b/drivers/infiniband/hw/bnxt_re/qplib_res.c
> > @@ -488,6 +488,8 @@ static int bnxt_qplib_alloc_sgid_tbl(struct bnxt_qplib_res *res,
> >                                    struct bnxt_qplib_sgid_tbl *sgid_tbl,
> >                                    u16 max)
> >  {
> > +     u16 i;
> > +
> >       sgid_tbl->tbl = kcalloc(max, sizeof(struct bnxt_qplib_gid), GFP_KERNEL);
> >       if (!sgid_tbl->tbl)
> >               return -ENOMEM;
> > @@ -500,6 +502,9 @@ static int bnxt_qplib_alloc_sgid_tbl(struct bnxt_qplib_res *res,
> >       if (!sgid_tbl->ctx)
> >               goto out_free2;
> >
> > +     for (i = 0; i < max; i++)
> > +             sgid_tbl->tbl[i].vlan_id = 0xffff;
> > +
> >       sgid_tbl->vlan = kcalloc(max, sizeof(u8), GFP_KERNEL);
> >       if (!sgid_tbl->vlan)
> >               goto out_free3;
> > diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.c b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
> > index 48793d3512ac..0d90be88685f 100644
> > +++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
> > @@ -236,6 +236,9 @@ int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
> >               return -ENOMEM;
> >       }
> >       for (index = 0; index < sgid_tbl->max; index++) {
> > +             /* FIXME: GID delete should happen based on index
> > +              * and refcount
> > +              */
> >               if (!memcmp(&sgid_tbl->tbl[index], gid, sizeof(*gid)))
> >                       break;
> >       }
> > @@ -296,7 +299,8 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
> >       }
> >       free_idx = sgid_tbl->max;
> >       for (i = 0; i < sgid_tbl->max; i++) {
> > -             if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid))) {
> > +             if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid)) &&
> > +                 sgid_tbl->tbl[i].vlan_id == vlan_id) {
> >                       dev_dbg(&res->pdev->dev,
> >                               "SGID entry already exist in entry %d!\n", i);
>
> bnxt guys: please just delete this duplicate detection code from the
> driver. Every GID provided from the core must be programmed into the
> given gid table index.

Jason,
 This check is required in bnxt_re because the HW need only one entry
in its table for RoCE V1 and RoCE v2 Gids.
Sending the second add_gid for RoCE V2 (with the same gid as RoCE v1)
to the HW returns failure. So
driver handles this using a ref count. During delete_gid, the entry in
the HW is deleted only if the refcount is zero.

Thanks,
Selvin

>
> Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
