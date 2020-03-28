Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE81196471
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 09:29:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/K+SnQ6i3U4WEaPWnBsELOGMpVLnf8GP7yJVNT3lxk=; b=tdoewH46D2mC0I
	4J1Vf5RHgPUSZwfRbHjvdr/RwVfJRXI55vworPw7QHh3IzprVdsWoujnu7AS6MgXJ/689gN/R8f5h
	tA9yO1GOKSTgGsH66YzW1ifEa1hhaNdC7Xhi+nzzddRYZdqbcLYtJmn8/u/Swlgwrbqj4wl3YhMqq
	SLo8JheKePS3OwH4YmUh4gM8GRA0uYIx81vaPd2fbBHbGu4pU/8vh66x8EUzyl4xYK5IBPu20MuBT
	BFsIN+lIQObFQz0m7Nvnb5U32vYaappWa/vuPtw5W+87O3cO35PS+uWeNWvDBDFbOJr5xsKCqjT0p
	aERq4vfxhwg0lt0s7ftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI6q4-0004KC-JQ; Sat, 28 Mar 2020 08:29:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI6q0-0004Je-37
 for linux-nvme@lists.infradead.org; Sat, 28 Mar 2020 08:29:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id h15so14490014wrx.9
 for <linux-nvme@lists.infradead.org>; Sat, 28 Mar 2020 01:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MwI/7GI2lKUQPn0sFyYZ2SRu3RwIG5d0OprhmdWW6P0=;
 b=HwYyNz+mZuQKoW0ZNbufhYbwnOtshk/omKd95cax8VI+WwJbpDE38nz+j/EoqSfnLU
 JtE+0Lx/gE0XlhU9+BIB5k/jqpXXfov4sbAto76Iw78qOGarijCA81CkghMw4HeMzhZb
 eNhVor5XeL9kUEsURT2DvWFgZjyUGha7dbok5rgjEmQOrpBw1S8R9VsP5TwOEB77tx1C
 aeuSf2kEWj4Rs4Tdi+tSexB9+He01d8aBfdmToKOCYGVNFLRg/qj4RH0CsWQBJKEApR8
 EJlqTX6fkWoTAA5NvTD5TgoTgx4/TwgV6ZDoTlX3zRzJLyhu2x9ZeDlsENu6MNcBsBEi
 R8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MwI/7GI2lKUQPn0sFyYZ2SRu3RwIG5d0OprhmdWW6P0=;
 b=KN4U0W7kpYAv3PBfiKOROYeMhEYP5TBCEosj5QcBI7msI32RbYM+e9QveW4W567+W6
 javGZbzjvWMdIGBcOBjVXy6fvncI6PsIoRvd5vDdunsvvnwdMW/JcBePdu/BvIukpH8a
 uCKo5QC0gHqN+thP9T+uOh75uXoJjdRNCUr2frVsaqq3iacGoeeiDKPdq4zZM993MilE
 Pw233Gu+3QYoAIfKq+t+uE+tG4LcOfEal/pIn3r8uu6J6z4ZFgEi00YD8F7QhJDlv7OQ
 ONVLdh7HAziL/5IBTLdqu++RWYubQwJ+gF8rG7niDbkU8bx/DZH1XqxpdE7pMlzB5UOQ
 SBjQ==
X-Gm-Message-State: ANhLgQ1jQ823vzKGjiGzey0TG2kLSud/09DJp2k8EGHf4l+IxEAVseDm
 /axWJWbAjwMO6AH+hkAzXhiAEHRKOWb2GWKrzzM=
X-Google-Smtp-Source: ADFU+vvcbrj0nGIpQ7ZdReABnLDzJXDdsiYijzqL80JlhfgeKYp4k2b7RxmxdTrFqMg2VmfKtK2nQu4voQHf2tob07M=
X-Received: by 2002:a5d:6992:: with SMTP id g18mr3868816wru.426.1585384142649; 
 Sat, 28 Mar 2020 01:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200323182324.3243-1-ikegami.t@gmail.com>
 <BYAPR04MB4965BAF4C0300E1206B049A586F00@BYAPR04MB4965.namprd04.prod.outlook.com>
 <cff52955-e55c-068a-44a6-8ed4edc0696f@gmail.com>
 <20200324000237.GB15091@redsun51.ssa.fujisawa.hgst.com>
 <6b73db44-ca3f-4285-0c91-dc1b1a5ca9f1@gmail.com>
 <dc3a3e88-f062-b7df-dd18-18fb76e68e0c@gmail.com>
 <20200327181825.GA8356@redsun51.ssa.fujisawa.hgst.com>
 <CACVXFVM=rT=86JrmAkySTg=gknfFL8Q1NU0uXWzoDMKMyL_mow@mail.gmail.com>
 <20200328031334.GA18429@keith-busch>
In-Reply-To: <20200328031334.GA18429@keith-busch>
From: Ming Lei <tom.leiming@gmail.com>
Date: Sat, 28 Mar 2020 16:28:51 +0800
Message-ID: <CACVXFVNY++56icyHB4+-aGjRXWZ5B7WdK4z-N336u0+v6sDhbQ@mail.gmail.com>
Subject: Re: [PATCH] block, nvme: Increase max segments parameter setting value
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_012904_143200_68A37BBD 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tom.leiming[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Tokunori Ikegami <ikegami.t@gmail.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 11:13 AM Keith Busch <kbusch@kernel.org> wrote:
>
> On Sat, Mar 28, 2020 at 10:11:57AM +0800, Ming Lei wrote:
> > On Sat, Mar 28, 2020 at 2:18 AM Keith Busch <kbusch@kernel.org> wrote:
> > >
> > > This is actually even more confusing. We do not support 256MB transfers
> > > within a single command in the pci nvme driver anymore. The max is 4MB,
> > > so I don't see how increasing the max segments will help: you should be
> > > hitting the 'max_sectors' limit if you don't hit the segment limit first.
> >
> > That looks a bug for passthrough req, because 'max_sectors' limit is only
> > checked in bio_add_pc_page(), not done in blk_rq_append_bio(), something
> > like the following seems required:
>
> Shouldn't bio_map_user_iov() or bio_copy_user_iov() have caught the
> length limit before proceeding to blk_rq_append_bio()?

Actually the limit should be caught earlier in bio_add_pc_page(), that requires
to pass 'rq' in, then one perfect passthrough bio can be made before
appending to rq.

Not only max sector limit, max segments & virt_boundary should be checked
in request wide too.

So far, only lightnvm calls bio_add_pc_page() before allocating
request, and that is
the 1st bio, so NULL rq can be passed.

thanks,
Ming Lei

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
