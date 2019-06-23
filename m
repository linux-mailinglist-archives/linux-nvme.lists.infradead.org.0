Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F0D4FB64
	for <lists+linux-nvme@lfdr.de>; Sun, 23 Jun 2019 13:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEedSiORevklanOGi2ha76hKN9LocTbe5j5/YPoY8ko=; b=bUin8OoXncQU0X
	A/lSLwBkVXDH/7BovvnO3WqSmECvSCDs9sax/RW6N9LM7A3Z9iEDth5Dp6XEvPWgaZzy5+KXAoF+g
	6+W81rIpGr6gMNjyQr5XqDw1I8FroNsvkWQcb2641fWwwJJyLjYPTv7a18TKSgIcPVV6Qoxs6xrwZ
	CWsBotcUIRhBY4YHCmuDnwfsOjSvvn9IoH8HM4TCvxgZN0ddzHV70KnZbRaxR18S9GcTwf2en8pSp
	WeoPdFey9+yacNeMzS12Yo418OQD1nVanx9pT2Tyc6AsSNdbBAiQAZsWPEvoPyVF2CJgMoAvXH4jR
	MkzgjM+dEFra2H9VwwbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf14s-00008K-Im; Sun, 23 Jun 2019 11:54:34 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf14o-000082-1j
 for linux-nvme@lists.infradead.org; Sun, 23 Jun 2019 11:54:31 +0000
Received: by mail-pl1-x631.google.com with SMTP id k8so5306447plt.3
 for <linux-nvme@lists.infradead.org>; Sun, 23 Jun 2019 04:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GRfL6JqSZHb78oSCXzd+QO8p531HpqOQaet3QVrLFog=;
 b=DweI6GvOatklaBwNdlXoF8Hl86kgngCPMDwwILPqBdBko19z+30E2irHMLDLyegT+q
 aT1sBi84Vq2hi7TkusIh7V16rQ6FWsSXGCOStV4Kg5ZQpwjxuOskNrGdTycokktoBagB
 uXins1LRMWULk9fBdQinrLsMxqXbnQECMuYxJMpVrAn7SVK76FHhbBkKl8CSl+43zFYG
 7zCpC/StiTmvmDWQkqLTpZ5K31jzHn0prycPZSNWT5Q46uNk9MPM5OXEDM4TMSqs+9LP
 JYnnzqsU3qeSMmeQpAjZawEMl+iqL1bCNwNMoS97+jV+y7PhddKjFS6ekHiNaMjAxBJI
 DXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GRfL6JqSZHb78oSCXzd+QO8p531HpqOQaet3QVrLFog=;
 b=PcrMGdDIlHf3BTomD6PC79cgGJh3KhRLAg8mNtIVPe6QAxzdtWGJIJ4FrIyUPx0V2M
 MepVumD6wzAu7kt6xHEggJ4wrkldABS6/SzYl3cXgULb1Hr2+Xh978Ax5wfgaKA1av78
 Lj3f/U9TVKZIscnBMpJKNkwssUyLjPLcxMX4kIwpTG1mw658ibvjrAmlYH9Dv5Ofmb8m
 9QVcoPEA63RaM6VfeEU6xcN/oGdXQ9hUfAeo+GKghtCu3FAttGhVbWEuWycCtL5UQcZd
 bYYolQZF4K9nnLQXUiHIjrcB/0wVUP851vY4c0jYiwmZkfCMieSOQQ4pOP3T6vBQBZPE
 mRjw==
X-Gm-Message-State: APjAAAVaUWaeR+E+MrFHD1Qopx2k/txOok5JqeE736lo+a1+RD7P1aaT
 4DKxgR3K3MQQw76SISl84I0=
X-Google-Smtp-Source: APXvYqykoQOWVk8s+yj8FEESuk2BvnQw0PrVtLsfw2I3DBGPBCNoLR4dHfB2sLrCA8/Z06dsihrtVA==
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr39543643plp.160.1561290868662; 
 Sun, 23 Jun 2019 04:54:28 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id q126sm1486228pfq.123.2019.06.23.04.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 04:54:27 -0700 (PDT)
Date: Sun, 23 Jun 2019 20:54:25 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Alex Lyakas <alex@zadara.com>
Subject: Re: [RFC] mismatch between chardev and blkdev node names
Message-ID: <20190623115425.GB26212@minwooim-desktop>
References: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
 <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
 <20190610140650.GA25273@minwooim-desktop>
 <CGME20190610235716epcas4p2715a468530e87b74c60543e8077a0481@epcms2p4>
 <20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced@epcms2p4>
 <C98BA6B1D6A342DAA10DA3CA561EA768@alyakaslap>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C98BA6B1D6A342DAA10DA3CA561EA768@alyakaslap>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_045430_117769_62264A1A 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
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

On 19-06-23 11:13:54, Alex Lyakas wrote:
> Hello,
> 
> if we look at the UDEV DEVPATH propertys of a particular nvme block device,
> for example:
> 
> DEVPATH=/devices/virtual/nvme-fabrics/ctl/nvmeX/nvmeYnZ
> 
> Would it be correct to say that "nvmeX" is the controller instance for this
> particular block device (or one of the instances)?

Yes, for the above path, The corresponding blkdev of the nvmeX subsystem
is nvmeYnZ.  We just need to be aware if the MULTIPATH is enabled or
not.  If so, the X will be a subsystem instance which can be checked by
nvme list-subsys.  If not, the X is the controller instance name.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
