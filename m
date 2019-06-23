Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BCA4FB67
	for <lists+linux-nvme@lfdr.de>; Sun, 23 Jun 2019 13:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejb41BleR+IBzK+KfdOJNZTpwFlXWf+NluJCsALcDY8=; b=Sl5TRx845qronx
	QXU8Y+SHyd51KBUMcCSeu6X3yjqrgZkJQ4nWXnjRjkYj07RTy3DZ/pJ4XjfQcoyKT5fBe+127u+5C
	iq51ihUN6OXOglseREUgIIyUk4pkiMp+efHEX2l2+nV7v4Ov6j95RdU1Ey6iXpBt69xHPCUhXQche
	SiivNKPcjEWDJGv8kElPc5jO0U6kSDROpDGKg6bADUIW7ycoqyusvkISxR7if/g1zk7Dzof+s0JIA
	jnVXrKIJ4g9QpjAAZHsp30qBD5jtZbVdAh4Qc1Im1NpC5K6aUL0hyS2wUTCUE5BYBSxr6qyF/qNIb
	avzgFPtWAd3DDADKV5oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf17x-0001dy-Iw; Sun, 23 Jun 2019 11:57:45 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf17r-0001dX-DQ
 for linux-nvme@lists.infradead.org; Sun, 23 Jun 2019 11:57:40 +0000
Received: by mail-pf1-x431.google.com with SMTP id 81so5888563pfy.13
 for <linux-nvme@lists.infradead.org>; Sun, 23 Jun 2019 04:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OmQmYCtrgv8pivI+1XQdF0YMKJpdCbRs9WHmOVKuEZs=;
 b=k2TvbpRCZUrXyaqB5Qb8avxrw/Bj7TKahbhWl1NLcbDnxtzLqX4sGYQG4lAN4/hf2Q
 qJ243jUW9Fwgkx9a+4Rp2/+Q3YvIwUKAFt93v4UJM20E+lnjNFnwRN4kwS4BLxVbjgJu
 0o2hrYVvrJQg9Grj7RfWOTZzpNkv8ucu8v1474z0XP307r9eqpsAGFdIXztmZYKL4niz
 FDUAzourjNaL0VNstcgJuW/W9SjVNFNq0WHe8w3TpQVjBppNOnA6CDaSueV+9IBAW+bh
 toFc53DoDFdLQK3U10CcTneipWCDNH2jHMtL0SklnCdZnlN6ozFr+vjoyqu91LYVNhJU
 +kbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OmQmYCtrgv8pivI+1XQdF0YMKJpdCbRs9WHmOVKuEZs=;
 b=PpZplzROt2Nvpe7m+SxlVMEZ95Yoe5tCzq6ibqno/Az9t+xvPBcrBU69mk3ZFYga41
 KrdUaZy41JgzVLs78B8wdaaI1qRLfnBASiDRE2ySWmJIAgoJ7X817KNZg/gX4ATC1bqy
 OlO8W3FDldo98Pd3K/ABbk4R0pxnnNexdY/Pctjt18eoVLi97a4acqDECkme9/Y6WHwP
 gvQjiXEz8ZpEqxD+wKW5eYrbtJVjfKqPFVSU+Z8ZxvM69/GPHzBquJgJk4D/kq3hplIa
 YaJhjNv4x5LKgEN0EcwxPz3CcHhIrCsB+1nR+HLOnTh8c3YOl6Asa72ERzf+ZOFmcxSu
 mXnA==
X-Gm-Message-State: APjAAAX0FMMjKCXpzyCvU7P6cSr8MN1R8L25McNjr3lXuMT7gw2FYvuh
 rtLWUHZrB7dfNsvyK+0CzMRgpbwMSXk=
X-Google-Smtp-Source: APXvYqw/oWVGun8qhJB4gZbgZhVaAHkcCggL1Ck2bCTMmCwY4cLoXc95EOdKo8mXQ1HHVWXp+isEaQ==
X-Received: by 2002:a17:90a:7107:: with SMTP id
 h7mr18037933pjk.38.1561291058650; 
 Sun, 23 Jun 2019 04:57:38 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p2sm11029904pfb.118.2019.06.23.04.57.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 04:57:37 -0700 (PDT)
Date: Sun, 23 Jun 2019 20:57:35 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Alex Lyakas <alex@zadara.com>
Subject: Re: [RFC] mismatch between chardev and blkdev node names
Message-ID: <20190623115735.GC26212@minwooim-desktop>
References: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
 <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
 <20190610140650.GA25273@minwooim-desktop>
 <CGME20190610235716epcas4p2715a468530e87b74c60543e8077a0481@epcms2p4>
 <20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced@epcms2p4>
 <C98BA6B1D6A342DAA10DA3CA561EA768@alyakaslap>
 <20190623115425.GB26212@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623115425.GB26212@minwooim-desktop>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_045739_457507_3FFCADD1 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <keith.busch@gmail.com>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-23 20:54:25, Minwoo Im wrote:
> On 19-06-23 11:13:54, Alex Lyakas wrote:
> > Hello,
> > 
> > if we look at the UDEV DEVPATH propertys of a particular nvme block device,
> > for example:
> > 
> > DEVPATH=/devices/virtual/nvme-fabrics/ctl/nvmeX/nvmeYnZ
> > 
> > Would it be correct to say that "nvmeX" is the controller instance for this
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
