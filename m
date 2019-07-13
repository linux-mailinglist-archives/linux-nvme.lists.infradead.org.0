Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A5E6790C
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jul 2019 09:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygabswEtUcvR5mOV2IFvanxIrQBaqIwkv3Xg9YQfIN4=; b=G35yCrGFyVgbSS
	Oa4uzINS5t6bdmgqsGWEwRoEVFnMsuDDB6G/fwrGFCdlnsbXSWe3ZreltKz+45rxTo/UANMe8kkF8
	FNUKTnWsx3R0hg6bgI61bULslFZv8E3ww8DFraTRRpNd5zWrSgaNZr9HOjlmvOhvQiUhalzMDhz7s
	niHtABQ9GdXXH08rot9XYuIFAgsL0QvpPv9nkevIVYitDIqyp61v8wCeek+NJSh2mQZep9mDQH8W5
	BoUBl2ZsYAo1y5RrH7d95aigTyWfx7cv8N0ax41FEb5OESxIouXLCCSTTpFjI+M7P//i7aQi40+E+
	5VUrnsbnQRruYgFnV38w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmCpP-0007cC-89; Sat, 13 Jul 2019 07:52:19 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmCpE-0007b1-0g
 for linux-nvme@lists.infradead.org; Sat, 13 Jul 2019 07:52:09 +0000
Received: by mail-ot1-x342.google.com with SMTP id x21so11746295otq.12
 for <linux-nvme@lists.infradead.org>; Sat, 13 Jul 2019 00:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YsoYwe6hxpLRheeL+2UgvVYli/JGpU8mUW7jSKwkKqs=;
 b=LOp8cpKNoLNUsNIKfv282/gUZq2qG5yniLmHV1SN79nx/kjYb2cYxCIbNpncNJiLbm
 tOOtTWUZBfGRftjbdJA+B2H81tUG+uEM9CB+VaFBIXHWZ4GIGQogrXNxE61cUQPMku/7
 LscAaqWoVOZM3nnQkpRjiA/u7HpJf9NEe/BTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YsoYwe6hxpLRheeL+2UgvVYli/JGpU8mUW7jSKwkKqs=;
 b=MAjg50B+tNcpU8+aMXnw7r248O7JqmdC5YsDgOZprm1MilJ+lEo1WhaeibPCbE8pja
 EpccRkkRQBOAjGKaHtkgCBw44dISgu6IAblGDNZpSBGrw8mE9UUJ7GM0EH41AybTBmbD
 7XrrGdSjBRvB0Mk/HmxgnZ9f4vlnqOjqxsfShgyyBMWcBdv97T6zmNJBxc3wy0xNoDpQ
 ELPX0p7rD3dtyFe5o+/VvlDa8244ia4tRPfzZVtyvm/OVD02Kjs3yob5p/kkyG0eBcGI
 Pavuc+x8i9KLJUyyEHrxznV5BF26uXPCnVYVDjvqCq1NhxDZ+k9m4YnnfCI3JxmqIXuG
 sb1A==
X-Gm-Message-State: APjAAAU69Nzm7K9HkBUx2/mDHrrMkXqELnr7LoJu+J55F0nMlaCGLSf/
 0/TnMLmv56zhq59chahMItl/38T/O5IgYb7A8smZuQ==
X-Google-Smtp-Source: APXvYqyDsXA615XyYaF8kUBB6KAk42S1QBYDp19Be9oKoBPK8aD+0k13VWXJWIG1Jw8xk48tJD4eQPpo7XSKDJc8UXA=
X-Received: by 2002:a9d:6e93:: with SMTP id a19mr12015771otr.216.1563004325846; 
 Sat, 13 Jul 2019 00:52:05 -0700 (PDT)
MIME-Version: 1.0
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
 <20190712174220.GL27512@ziepe.ca>
In-Reply-To: <20190712174220.GL27512@ziepe.ca>
From: Selvin Xavier <selvin.xavier@broadcom.com>
Date: Sat, 13 Jul 2019 13:21:54 +0530
Message-ID: <CA+sbYW3Pp=qwky+myAEkiP-9TOui+9=DSyQxivNuSEsD8K4CFA@mail.gmail.com>
Subject: Re: regression: nvme rdma with bnxt_re0 broken
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_005208_065406_BC668CC4 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

On Fri, Jul 12, 2019 at 11:12 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Fri, Jul 12, 2019 at 09:59:38PM +0530, Selvin Xavier wrote:
>
> > > bnxt guys: please just delete this duplicate detection code from the
> > > driver. Every GID provided from the core must be programmed into the
> > > given gid table index.
> >
> > Jason,
> >  This check is required in bnxt_re because the HW need only one entry
> > in its table for RoCE V1 and RoCE v2 Gids.
>
> The HW doesn't have a 'GID table' if it has this restriction. It
> sounds like it has some 'IP table' or maybe 'IP and VLAN' table?
>
> So the driver must provide a full emulated 'GID Table' with all the
> normal semantics.
>
> Which looks sort of like what the add side is doing, other than the
> mis-naming it seems reasonable..
>
> But then I see this in re_create_ah:
>
>         /*
>          * If RoCE V2 is enabled, stack will have two entries for
>          * each GID entry. Avoiding this duplicte entry in HW. Dividing
>          * the GID index by 2 for RoCE V2
>          */
>         ah->qplib_ah.sgid_index = grh->sgid_index / 2;
>
> Which seems completely wrong - that is making assumptions about the
> layout of the gid table that is just not allowed.
>
> Surely it needs to access the per-gid driver context that add_gid set
> and use the index into the sgid_table from there?
>
Agree.. We need a mapping between HW table index and GID table index.
We can either maintain a mapping in the driver or have an ib stack function to
get the per gid driver context from gid table index. The later makes sense
only if other drivers also needs such interface.  I am not sure any
other driver needs
it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
