Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16393C03C
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 01:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jDZXpqP5ksTriH4jW7eBFQm1M2N0RGmhYYJbD6/mSeI=; b=qHwpEefL3LSCiP/x31U5Fi5Ws
	iIxTaRPeLZJifcU9Q5hqGRaxc6w769BYsUXn4IeIg8VA0Y7tPIA/6DX+NDeYsqx3roMR+MFYLX+6k
	4BvAyN0Kw3OltRku3Hld6UFkoTc92jQJMmEd02Xja6GKxtK1gnTMEkzjAJ+i4i4pyqD59wNrRa8CJ
	2gGcQ/BiRDBJyakWn/k9n9JW94AEFzA3OgDwDwR3ghZDAmxlqWEzNGZ+fcvVTu6KggLJgppmjyJOR
	DWxit7fxzdosOoT/nAWyxsEFN4uR396xtyK95LrSh6kz6k1cjeFLfzbj7xdL7FN1o8RkXgk8550+9
	LzjkUavHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUA1-0004Up-5Q; Mon, 10 Jun 2019 23:57:09 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haU9v-0004UW-5l
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 23:57:04 +0000
Received: by mail-ot1-f42.google.com with SMTP id r10so10087717otd.4
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 16:57:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jiNZrvYurqqWOhQVPcMdchlSn2dfqQ1S38TqZakBggs=;
 b=iVy0Xsylk0hvnTGcWt5Sh+8ripTah4vgdGImgpwpSxlVTjg4/xHKZzbZ/r2raIrKt8
 h+wyzIjxbCxZiwkyAwShkidYs8mMPakhVuOHMf4AFFy4W7+YLe4FNOdgTiiXEwwaH/N4
 Z0bnX9jb0pYZfYdicVDK/FCLf03CFCM7khAp3ZyZxaOHQ8Vrsmt1gumN9rPxMB2zlX7J
 XGDfprXseHq4V+V7MNpBlgvGc6d1tiv//LXGqr7U3WP2D0jaQDUUt76/SX4i8VQQw6/M
 4bffyVtos1i6vaMoUB9gUCKfErUZOPOFzL6OwDsZaSDUi0rnlLR57FC1r8g9AGkfUF+5
 vCDg==
X-Gm-Message-State: APjAAAV9jXjTtLAOjxflzIGgUe7Lpn5VN/ccAMaAZwOkU8sODli1DLwW
 qfG9xZUJntejLLenWCnde0jQbXzj
X-Google-Smtp-Source: APXvYqy/xLWutcb0ZzmRh7EcTFvhbJFP8FApAhTjNFe3rEpPKCO08H73xSNY7uvY3lUUDG3ILBS8mQ==
X-Received: by 2002:a9d:6f84:: with SMTP id h4mr10308585otq.354.1560211021457; 
 Mon, 10 Jun 2019 16:57:01 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e24sm4504378otp.14.2019.06.10.16.56.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 16:57:00 -0700 (PDT)
Subject: Re: [RFC] mismatch between chardev and blkdev node names
To: Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <keith.busch@gmail.com>
References: <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
 <20190610140650.GA25273@minwooim-desktop>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
Date: Mon, 10 Jun 2019 16:56:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610140650.GA25273@minwooim-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_165703_218898_8E592B01 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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


>> You just need to know this if you're accessing direct namespace
>> handles, and the controller-namespace relationship is accurately
>> represented in sysfs for those wanting to view it.
> 
> Then the user should exactly know the relationship bettwen the
> controller and namespaces via the sysfs structures.

Or run:

nvme list-subsys (with or without passing in a namespace device node).

For example: nvme list-subsys /dev/nvme0n1 will show you exactly which
controllers it spans and which subsystem it belongs to.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
