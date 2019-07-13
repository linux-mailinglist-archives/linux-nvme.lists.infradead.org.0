Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ECD67A1B
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jul 2019 14:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVhcLPslE7Vb+Nlj7fFtJWPdMyWukysFse/txAFuiCc=; b=P0wn+CyQep24m1
	a68rgDC3dKsn0ud/jswNUHKzvHxr2gUJ5eFvtbnxsspTgtI6s0wzoeUohvS5ePEpr1yq3ensjBpby
	OeEhcl77RKgdbtSeA2//OiA22y/IEGb0+fiRrinLYZTzf7uqSEQfJEqyt/M3ccsYWmhr1M5FlEh2u
	33EmKH2px/Iivnl4FGvo0rbGSdX/EQnXrE17dh733i62UICf6Wjv8sw7FRjJY47d0db4Sl2ndAWpi
	wk9VOP241nhbFKL7azC5G9+igwRBjRxgFjD87zB5qWCzbt9tvQfH31/ORqE3DZfIQ9Kd5vnkK8s83
	Hc+ifde+Lfn/iix99ixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmGta-0003ZX-C8; Sat, 13 Jul 2019 12:12:54 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmGtS-0003Yq-2K
 for linux-nvme@lists.infradead.org; Sat, 13 Jul 2019 12:12:47 +0000
Received: by mail-qt1-x842.google.com with SMTP id r6so6858158qtt.0
 for <linux-nvme@lists.infradead.org>; Sat, 13 Jul 2019 05:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wSRjYLXrGehQ92MoF6l9X1Uen5Hy9hhiufl0O/CqQkg=;
 b=aGrEXQNCXS/qbyuc0w8dxVrD5UMFiKZnCHL7MzUadJaicDoV919KeKJMbVXTVL0e6F
 jtLmRY3j+3UAwqi0sNsOkdcRqGu0zvQaMVX2gsaWqBLji+WqD2pZaCPqXaMBScHPDcCz
 wp/yO+HmUPOVm8pyz6lMgzgxV++j72oYP6CLEBn9barFcuGTi982yK/p5O9mk5Nox5UV
 iCI8iPAdnFxdY9UJV41Mv7DrMjrAvkUJ5ucUeyePjRQYCT+99C7ynjHtxACnWvn3lEq6
 QdoAHNRPB+Ayg+2vCT7n5cMJ6/SksQVigpcY2WtLNd05MMjXRqX9rDDHsy3QJI1RLGqT
 kOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wSRjYLXrGehQ92MoF6l9X1Uen5Hy9hhiufl0O/CqQkg=;
 b=ANpiVHCWeKGLv9UQBtE7ES9pTyu0DAOL4ElPNlxriF1z336QKCaMNFMab0O7yWobQm
 yszbwhGCXGMdWVNSF68h9hkmm8Kc02NwPhcghJT806Xt3oIRQW3MHvCWbWclQuZIKaFJ
 LnEQq/atTAWbFrmN32lc/kEXVeCAsDtWdNIwVRZXQ5dvKX7C83iD4IHCdt2NYhv+VRM6
 sFx6B6M1xylVGrxb4xqhCfVLg2Ioh0dLobiZR8AF81A7xjMEmheaXoKL/+B4x0DZnC9u
 EWjbhqu3HySzdLuCv2ZfV4NIwo2A1La7YCdlgPck6wIneq+4KJLp5di9N9q4R0FP6NVV
 UWUw==
X-Gm-Message-State: APjAAAWogcrE5MElhInoUNqMd5V00mSiuHDqVJTvp5hcjp1eJrnhYaUH
 PlBDn069rze35/qEhxnpDwOvuA==
X-Google-Smtp-Source: APXvYqyHduXbzwORFDQsoAk95f9vSumZ3U+H2uKUM2cqH7Wbk921vMN6amCW8Vbkz9j+CQ++8wkRDw==
X-Received: by 2002:a0c:d0fc:: with SMTP id b57mr10961136qvh.78.1563019964936; 
 Sat, 13 Jul 2019 05:12:44 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id q56sm6186341qtq.64.2019.07.13.05.12.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 13 Jul 2019 05:12:43 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hmGtO-0001cu-L8; Sat, 13 Jul 2019 09:12:42 -0300
Date: Sat, 13 Jul 2019 09:12:42 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Selvin Xavier <selvin.xavier@broadcom.com>
Subject: Re: regression: nvme rdma with bnxt_re0 broken
Message-ID: <20190713121242.GA6211@ziepe.ca>
References: <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
 <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <20190712154044.GJ27512@ziepe.ca>
 <CA+sbYW0F6Vgpa5SQX+9ge4EwWrMkJ4kQ-psEq11S00=-L_mVhg@mail.gmail.com>
 <20190712174220.GL27512@ziepe.ca>
 <CA+sbYW3Pp=qwky+myAEkiP-9TOui+9=DSyQxivNuSEsD8K4CFA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+sbYW3Pp=qwky+myAEkiP-9TOui+9=DSyQxivNuSEsD8K4CFA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_051246_294444_9EFE877F 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Sat, Jul 13, 2019 at 01:21:54PM +0530, Selvin Xavier wrote:
> On Fri, Jul 12, 2019 at 11:12 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Fri, Jul 12, 2019 at 09:59:38PM +0530, Selvin Xavier wrote:
> >
> > > > bnxt guys: please just delete this duplicate detection code from the
> > > > driver. Every GID provided from the core must be programmed into the
> > > > given gid table index.
> > >
> > > Jason,
> > >  This check is required in bnxt_re because the HW need only one entry
> > > in its table for RoCE V1 and RoCE v2 Gids.
> >
> > The HW doesn't have a 'GID table' if it has this restriction. It
> > sounds like it has some 'IP table' or maybe 'IP and VLAN' table?
> >
> > So the driver must provide a full emulated 'GID Table' with all the
> > normal semantics.
> >
> > Which looks sort of like what the add side is doing, other than the
> > mis-naming it seems reasonable..
> >
> > But then I see this in re_create_ah:
> >
> >         /*
> >          * If RoCE V2 is enabled, stack will have two entries for
> >          * each GID entry. Avoiding this duplicte entry in HW. Dividing
> >          * the GID index by 2 for RoCE V2
> >          */
> >         ah->qplib_ah.sgid_index = grh->sgid_index / 2;
> >
> > Which seems completely wrong - that is making assumptions about the
> > layout of the gid table that is just not allowed.
> >
> > Surely it needs to access the per-gid driver context that add_gid set
> > and use the index into the sgid_table from there?
> >
> Agree.. We need a mapping between HW table index and GID table index.
> We can either maintain a mapping in the driver or have an ib stack function to
> get the per gid driver context from gid table index. The later makes sense
> only if other drivers also needs such interface.  I am not sure any
> other driver needs
> it.

I'd prefer a core function to return that context..

Even better would be to have the core allocate a larger entry and use
container_of

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
