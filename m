Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFC351ABE
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Subject:In-Reply-To:References:To:
	From:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UJ3oe4w0nRySGHSLvthMg9MuzZ22s09zy8N5x0ilp0E=; b=D7e7cG26yNQ1W/SaF5LrBTMMn
	0YTPmU/KLdDAiKtqOqj9T9J9saGWDnXZoKxtXtJflm61TH0TnJbH4bWHSxo3GmP9shzlYxE0p2/iV
	qWvhO8e1/asj084jzlSghjBDXRUw54c7mMmG8eSir7/3317mj0hn3nJB3bfSBV22uUItYR9KvNZAd
	VO/tC0Eg3cleMcJD5tIQ8E2wLtlSJYGui3r3yPhXNqVe1A6t7TqbCQudH82UH1Mf9uEBSuh2rzeLf
	spGiXuRGntaxQRQAmh/D7IHRM38iddVjz/PAnIhXEaCxo1JnZhKbIFPb90pAxKSAvAbuw48PC3VEa
	So7LgstfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfToV-0004w0-HS; Mon, 24 Jun 2019 18:35:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfToO-0004vY-Sg
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:35:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so14997447wrs.5
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 11:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:from:to:cc:references:in-reply-to:subject:date
 :mime-version:content-transfer-encoding:importance;
 bh=g/RqNnnqPMm2sJpnSJBkLA9sf3h/S2eBghZjJHIQmC4=;
 b=tkOhJg/jaGwiJGoE9700MJ1euLv39jNlk/Rfa+sInkwYTV+orSal9Kgxb4AHQ3SUtE
 QM+VeWXFmKV5BMtyrwuGLKq/2MO6d4uPO81NNpgAWPKp7gKCeUMV9w6CCwCKByLThExR
 m3mFCiZtwIyhq5F+1UTnieaDmI52791OjQ0Na7gE8cX3wHLsZhILDK301BpQivHC8sGt
 mnuVlJyq128tDVs31WEN438wCtQPZbwv+CuIDfXPkJFTN6l6JC17jUFLDoYqtBGcfD2f
 hIfD9hPbZfUbNNuQu7CMFyVHwU+9pbpyYdmkSRJ5TeifgxiAzNayiq2EbCW6DRk7bxwA
 OZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:cc:references:in-reply-to
 :subject:date:mime-version:content-transfer-encoding:importance;
 bh=g/RqNnnqPMm2sJpnSJBkLA9sf3h/S2eBghZjJHIQmC4=;
 b=NIO+YqLMOihKRssp+eDN5Jn+tYHkOATsUuhzUfn1l6yEw2AD4XJ0BRMRCJFiJRFoFs
 9RiqhE1waWBptFge7o2KFHhJ7Bu0yj0gabcVTV/8E6Bi/19h0P4vYBGOOpU/6QjPaW5f
 LGsyXInUYunOFin14HH3TVkZW559DHEX/YGla0ftmc0OMI6oiK+jKdLa6Q8VldoAXdvO
 4Zthg7Ufdi0tzzYqwDCfecEtNPkXF+Shh62aEkM03A1a/dXOiDJFRF7vzVt0NwlRhQgz
 yMGjTRa9iy7tBn7TMm7NpV5cCArXOJrUnz8D7Yr7uMgCQoBIUs8djkeM1K7t2VJyp2W9
 I7vQ==
X-Gm-Message-State: APjAAAVNWwu2pb9PknmHN0+/x33gEu6DlDSykebyAl2ikOAM2tQIHWVu
 FZOvqmVi6sGt+wGI3i7ZhpYfRA==
X-Google-Smtp-Source: APXvYqwEK2v2VyTPrue158+/ktLp5EgBsdZgFBV+OX3uws2yz9OJ/yUFBkFgWGLizZPINpfQRPO6Cg==
X-Received: by 2002:a05:6000:124a:: with SMTP id
 j10mr9871211wrx.191.1561401326812; 
 Mon, 24 Jun 2019 11:35:26 -0700 (PDT)
Received: from alyakaslap ([82.166.81.77])
 by smtp.gmail.com with ESMTPSA id a67sm260359wmh.40.2019.06.24.11.35.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 11:35:26 -0700 (PDT)
Message-ID: <71727394A2834938B4CC9C104EA6B650@alyakaslap>
From: "Alex Lyakas" <alex@zadara.com>
To: "Minwoo Im" <minwoo.im.dev@gmail.com>
References: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
 <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
 <20190610140650.GA25273@minwooim-desktop>
 <CGME20190610235716epcas4p2715a468530e87b74c60543e8077a0481@epcms2p4>
 <20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced@epcms2p4>
 <C98BA6B1D6A342DAA10DA3CA561EA768@alyakaslap>
 <20190623115425.GB26212@minwooim-desktop>
 <20190623115735.GC26212@minwooim-desktop>
In-Reply-To: <20190623115735.GC26212@minwooim-desktop>
Subject: Re: [RFC] mismatch between chardev and blkdev node names
Date: Mon, 24 Jun 2019 21:35:24 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_113528_992487_BE271910 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 STOX_REPLY_TYPE        No description available.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <keith.busch@gmail.com>, Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Minwoo Im,

Thanks for the explanation.

Alex.


-----Original Message----- 
From: Minwoo Im
Sent: Sunday, June 23, 2019 2:57 PM
To: Alex Lyakas
Cc: Sagi Grimberg ; Keith Busch ; Minwoo Im ; linux-nvme ; Minwoo Im
Subject: Re: [RFC] mismatch between chardev and blkdev node names

On 19-06-23 20:54:25, Minwoo Im wrote:
> On 19-06-23 11:13:54, Alex Lyakas wrote:
> > Hello,
> >
> > if we look at the UDEV DEVPATH propertys of a particular nvme block 
> > device,
> > for example:
> >
> > DEVPATH=/devices/virtual/nvme-fabrics/ctl/nvmeX/nvmeYnZ
> >
> > Would it be correct to say that "nvmeX" is the controller instance for 
> > this
> > particular block device (or one of the instances)?
>
> Yes, for the above path, The corresponding blkdev of the nvmeX subsystem
> is nvmeYnZ.  We just need to be aware if the MULTIPATH is enabled or

I mean if subsystem has multiple namespaces, then nvmeYnZ is one of
them.

> not.  If so, the X will be a subsystem instance which can be checked by
> nvme list-subsys.  If not, the X is the controller instance name.
>
> Thanks, 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
