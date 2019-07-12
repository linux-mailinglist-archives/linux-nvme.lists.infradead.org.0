Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F1A67474
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 19:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fa2m8BCYbJSx8OG3xqHWYsywTyCc8arhKXXeKS0yWDs=; b=OVR4/uji3u/0hm
	+v71GvqVAcAVWiCVOir1dYjzkdY7qn4jjOSzONCSivk7viHScNMihSzeGMZirMGiV/nf+JRszygfg
	fl0IaFNVOCTKsKJLFT8t59iZtNozoLEwqqi8na9E7Mwfi+kyPs/XtI1mjiwhJJtxAvojL3n0vbPuV
	frrlOB4rT2pQI/ZuFWM1+ZDbekybexnSI9DZLMhWKbyyrFdNfCZVCK56e8f98sJ35cOSFMYdXIbi6
	4keUZYRMz8fMcU8mxnFwrhirzB4S58iKVq6RKwuNNduHv1+GcFwirdAgAfTM8zcX4AnT9JJ/jKnib
	cjMDCkjyeesDw/wIoL9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzZ0-0004LM-5r; Fri, 12 Jul 2019 17:42:30 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzYs-0004Ko-HM
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 17:42:23 +0000
Received: by mail-qt1-x844.google.com with SMTP id l9so8940101qtu.6
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 10:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3O32Kyq6oSJ1qa7toJHZZ9UJwAgNuju3KRmfxEHI8bQ=;
 b=LC5r0LDDWh4BCxxQAgMDccQsgHNbKdSIzUaME2cre/oHB3xGOfm5djQo5dU71oDT20
 0kihFyTgPyY1P6nXSAF3hhpaSbHw3cixIdOyJFNDPSTdx/9z6pQgN8KTogdgIxpumS2G
 SL/nu+SYkLsC7Jk2Wsh8ntoveNraL10w9ipdraGe6hnPVGJXczioSrTwBYNV10HfFL8H
 5YAyvHrRVuCfmgMxbuhbyFQbS6keetepHK8XxE/MtdF5kR29KXTtmlNOVMkD/kgxK3VO
 7lotP2jZLki0wZrXVOx77+ww11yFk6BAy7LDmfErx7QsqWFgocmFvvn6JsxytcuyZA/K
 OdZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3O32Kyq6oSJ1qa7toJHZZ9UJwAgNuju3KRmfxEHI8bQ=;
 b=SwKCuIESRejvtM5jKmAHgbvjSA87/Ynm84gXFIP2tFcnwBPFdousW8uL78JT5ll199
 WTjWtoUU1rA2QMUGqHoJhS3Va9hHv4QmD1AyVsTQOje2AWbgAlyp0HiYebUjoCrVM203
 q1ydYZX/QjHhOVXZyrMbgAD2ADnUzDCXoK3Wd+NHcbNPc3H26Z9WCyU+2Ws4zCXCwcTT
 e4+zQpieiKEMbQ6NLgbcReOVHYwO1r8Ac2x+VjuR49Fxm2hs5w62eucB/hZumVhRA9Ms
 xwnVbTa5ZN1E0ABMRQpiX4QOJhMGIhwnAkUyfndLjSv2QOUnSWuWaeQIczo3c+LAf05U
 Q+gg==
X-Gm-Message-State: APjAAAVkdCX8rRMFRmjywlYPCeZ1OaVqDx/PLZ35ppxLTRWc+ZiFtBO6
 wpip/cY+hVkdtSKP5MUJLSghCA==
X-Google-Smtp-Source: APXvYqwsq+dBel5Hn8pHqLq0F0nE+qD0pvdFMR/gu9SpDJgObwHHtFiugfMDsGXPAyVOZ2RX5wfsrw==
X-Received: by 2002:ad4:4a92:: with SMTP id h18mr7877218qvx.235.1562953341056; 
 Fri, 12 Jul 2019 10:42:21 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id i27sm3818246qkk.58.2019.07.12.10.42.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jul 2019 10:42:20 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hlzYq-0003pT-5V; Fri, 12 Jul 2019 14:42:20 -0300
Date: Fri, 12 Jul 2019 14:42:20 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Selvin Xavier <selvin.xavier@broadcom.com>
Subject: Re: regression: nvme rdma with bnxt_re0 broken
Message-ID: <20190712174220.GL27512@ziepe.ca>
References: <66d43fd8-18e8-8b9d-90e3-ee2804d56889@redhat.com>
 <AM0PR05MB4866DEDB9DE4379F6A6EF15BD1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
 <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <20190712154044.GJ27512@ziepe.ca>
 <CA+sbYW0F6Vgpa5SQX+9ge4EwWrMkJ4kQ-psEq11S00=-L_mVhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+sbYW0F6Vgpa5SQX+9ge4EwWrMkJ4kQ-psEq11S00=-L_mVhg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_104222_718924_6974F9A0 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Jul 12, 2019 at 09:59:38PM +0530, Selvin Xavier wrote:

> > bnxt guys: please just delete this duplicate detection code from the
> > driver. Every GID provided from the core must be programmed into the
> > given gid table index.
> 
> Jason,
>  This check is required in bnxt_re because the HW need only one entry
> in its table for RoCE V1 and RoCE v2 Gids.

The HW doesn't have a 'GID table' if it has this restriction. It
sounds like it has some 'IP table' or maybe 'IP and VLAN' table?

So the driver must provide a full emulated 'GID Table' with all the
normal semantics.

Which looks sort of like what the add side is doing, other than the
mis-naming it seems reasonable..

But then I see this in re_create_ah:

	/*
	 * If RoCE V2 is enabled, stack will have two entries for
	 * each GID entry. Avoiding this duplicte entry in HW. Dividing
	 * the GID index by 2 for RoCE V2
	 */
	ah->qplib_ah.sgid_index = grh->sgid_index / 2;

Which seems completely wrong - that is making assumptions about the
layout of the gid table that is just not allowed.

Surely it needs to access the per-gid driver context that add_gid set
and use the index into the sgid_table from there?

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
