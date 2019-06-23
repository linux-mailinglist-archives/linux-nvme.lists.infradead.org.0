Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3FB4FAC3
	for <lists+linux-nvme@lfdr.de>; Sun, 23 Jun 2019 10:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Subject:In-Reply-To:References:To:
	From:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xbxv7Sx2782Z4jEalsYbAJ5k/B240SQGXmUyqs0oLs0=; b=fHSltnxAZPPStJmrMcQeouYmu
	uckeoKkYGDtZHuHNLHNzBXMMEFzQmCJt0z7hlKRYOtQhxOonlhLMQn/qNNMBirxKVhYLc2RIwtEmG
	f145qhYz2rTRMf8Zvr+izN/hypAjpQECK2B2OKxuaROduZU5JIjVdoD8mSwdHo+vihZDUiRhOB3Hb
	s56WI1AOhvdTw06lavgLveyH2bczWvumjFXooj91T/lgnLQZGPbi2eeIPoiqQvjrba2ibQ/lDP32W
	Oyml5QhKUOmA8BtmAv36CcvYYByVkEGjg2uDWZYVo5vItJlehOA0hXm53RPjjqQxy5dnfSFNR9GCy
	wbzRgpfbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hexdw-0005ME-QA; Sun, 23 Jun 2019 08:14:32 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hexdg-0005Lv-AW
 for linux-nvme@lists.infradead.org; Sun, 23 Jun 2019 08:14:18 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r16so10527514wrl.11
 for <linux-nvme@lists.infradead.org>; Sun, 23 Jun 2019 01:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:from:to:cc:references:in-reply-to:subject:date
 :mime-version:content-transfer-encoding:importance;
 bh=1NqvWPakmyWDtOBfiBu1QKYwywDW02IV8wY7Q48Ku7g=;
 b=g8JTwqxeYf+FM+XvH91/oLqiLXF70sH29Zj4HhOqyodV9N3F4Y6EDXpD6uiQKqIkcA
 vaplIWjre2sfjciQmHi04XjkoIQ02gwkMD2/PR9HHSERW5QVEdvYPaqpne8WXU6CC7+R
 rtH7lRSagNRW/JtxfACezZkDa+6OjV46rt1eUKDgxLNEXAuh8sPEKQjcBrye+vp2ndm4
 bdGMWvG7qquyviLq9UpiAEFXYV9PSL7rG4FBy5f4WHFFBKRhsOITHEBfAzqlL5wWtF4G
 k5EwBgIR/sBLpIgcHTHjnRCP9qi9LdsQ81FhUyH2G5h5tTNfr9+nduxEt1ECGRYAunvQ
 DIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:cc:references:in-reply-to
 :subject:date:mime-version:content-transfer-encoding:importance;
 bh=1NqvWPakmyWDtOBfiBu1QKYwywDW02IV8wY7Q48Ku7g=;
 b=uKkb+z4SG3q5S3mMi4L911TL+I94N15As9murfSxzNAcbL4UPBgFPtyaIYGo/Uew86
 E5hKK52EWwI3Qy0KOEejv8OdR7TnKQ0tuDL+vmD6vUXEumAsc/zt1f9fHZ//MCZ06f7E
 La9WJSddr4XEoFQcgq8h/7Xx+96qKjEAIoZoSd8B10qzbepLb/tRQQIor4HFidHSZSaO
 3Uyc2hjGGw1ELULtMoEW2qlfVxpNwhJD0jnZig4iQTgCQIf+9SjpV5E93xWwVqkSHhA7
 AgKo08tIYttPmuaDcUzhyB3f1SasmWBKXz8IuK/viFlXtJpW1Px9M0kLchOPQ5hCq1Qw
 wnEQ==
X-Gm-Message-State: APjAAAWfSc876wqC3d0gZRMWvO9ajhD7Lq7u5CBXHXYyxqwfSCC+arZJ
 MB5U6479WcuLFC2UguF4qlNDvw==
X-Google-Smtp-Source: APXvYqwpTo6r5KiSRu8+I4snIkCbY2DyRbjThGLetqhncZj/K2r7yvGTR2E1uah8U5kgwUNwbUOfyw==
X-Received: by 2002:a5d:508a:: with SMTP id a10mr35213881wrt.59.1561277653713; 
 Sun, 23 Jun 2019 01:14:13 -0700 (PDT)
Received: from alyakaslap ([82.166.81.77])
 by smtp.gmail.com with ESMTPSA id 32sm15058750wra.35.2019.06.23.01.14.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 01:14:12 -0700 (PDT)
Message-ID: <C98BA6B1D6A342DAA10DA3CA561EA768@alyakaslap>
From: "Alex Lyakas" <alex@zadara.com>
To: "Sagi Grimberg" <sagi@grimberg.me>, "Minwoo Im" <minwoo.im.dev@gmail.com>,
 "Keith Busch" <keith.busch@gmail.com>, "Minwoo Im" <minwoo.im@samsung.com>
References: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
 <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
 <20190610140650.GA25273@minwooim-desktop>
 <CGME20190610235716epcas4p2715a468530e87b74c60543e8077a0481@epcms2p4>
 <20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced@epcms2p4>
In-Reply-To: <20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced@epcms2p4>
Subject: Re: [RFC] mismatch between chardev and blkdev node names
Date: Sun, 23 Jun 2019 11:13:54 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_011416_625004_1A0673E8 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 STOX_REPLY_TYPE        No description available.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello,

if we look at the UDEV DEVPATH propertys of a particular nvme block device, 
for example:

DEVPATH=/devices/virtual/nvme-fabrics/ctl/nvmeX/nvmeYnZ

Would it be correct to say that "nvmeX" is the controller instance for this 
particular block device (or one of the instances)?

Thanks,
Alex.






-----Original Message----- 
From: Minwoo Im
Sent: Tuesday, June 11, 2019 8:14 AM
To: Sagi Grimberg ; Minwoo Im ; Keith Busch ; Minwoo Im
Cc: linux-nvme
Subject: Re: [RFC] mismatch between chardev and blkdev node names

> >> You just need to know this if you're accessing direct namespace
> >> handles, and the controller-namespace relationship is accurately
> >> represented in sysfs for those wanting to view it.
> >
> > Then the user should exactly know the relationship bettwen the
> > controller and namespaces via the sysfs structures.
>
> Or run:
>
> nvme list-subsys (with or without passing in a namespace device node).
>
> For example: nvme list-subsys /dev/nvme0n1 will show you exactly which
> controllers it spans and which subsystem it belongs to.

Yeah, Sagi.

I just have posted the comment to the issue in Github just like what you've
mentioned.  we can figure out the relationship for the subsystems via
"nvme list-subsys".

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
