Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B15FBE976
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 02:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EsT3i/uCWnBB1/LpsYjJMuU27ZyWvIm3kkE0NVRxN4k=; b=EecXmiJGc5zFlAQMzC6jeLnjn
	/2riOwiKzpBIE2ULLzwxq8Ci6Kc3SJiZJX3rJvnlAv81rxDefqGRVrqfuKKHAb9WDXqhCRwb3A4VI
	PNcj0HV4ob1MXfc15LcGoZekwoZgULptULcXp3jo3Nt5UZnUz0oWo6nudzSmqM0eEdu9azSyAYa31
	dL0iBdm/tVMvcTGZ7uP5jGJEBIU5/T1fDKnTA5Rb3bkUdjGkY0fg8XHDwPxTBKTWOSuXVjlo1LiDo
	Ah0r+A9IE+m2gy/xoBFCFOwDbiqrmgf2oF1LlifA0wzZ//02EBwtrh7Q5dr9Rtq3eti2WkJewVTjT
	YTI8PzzVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDHed-0006xv-4B; Thu, 26 Sep 2019 00:29:07 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDHeT-0006xS-QX
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 00:28:59 +0000
Received: by mail-wm1-f66.google.com with SMTP id r19so586969wmh.2
 for <linux-nvme@lists.infradead.org>; Wed, 25 Sep 2019 17:28:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3R9212pr41S+Qta6h6sVutXRYPyVzUPjpdTg9z2vChA=;
 b=uG8y1eL8LNdL12o8BwtpKnKgOALHv9wgRd6r4lHbjjOy5ZJ5rCD1zHtKqWU5hWVplh
 MXnLVaqUmdZoBIqKVsVQ8rh4nnlhP4frlbbhrIr+QvWN7ngmmlg2dXjxaUI94w/lGepl
 A4qimtp7DKgaqlxWIyoMX9SiTZbGM2YBb4+0hGT3cqPi5fp1w8yCk5LjJjsExf1H20Ud
 o5+Uqx8Bg8o7Yd1V78FaOsOYIgrclGkiW7/HLZKDzbRRRgcnVSXpPxpI7ECEDIm5XfrS
 rB8f03MVlvaD4rXipCUPHmTRf38RWOAT6jc/cApT1MeH0OERF/tPDVn6HoXGGg6YzUoU
 mdQA==
X-Gm-Message-State: APjAAAWZTOQ/rGMO08vyfoAvfxfCvnCDMigjWzA4CNsVyipdNPuTDmBr
 vjb1h7yOAV4ljwTRGS2AKLZfF2tU
X-Google-Smtp-Source: APXvYqwYNerQH7sQWxr6N8vWUpF6OD/EpSWHZC2Z2HowI59YELoiFTfySy5cACw70Cyq3S5BRKcWHg==
X-Received: by 2002:a1c:6a0f:: with SMTP id f15mr528006wmc.159.1569457733159; 
 Wed, 25 Sep 2019 17:28:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g185sm1757197wme.10.2019.09.25.17.28.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 17:28:52 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: Add ctrl attributes for queue_count and sqsize
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190926002023.14033-1-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4d1cea96-1352-eaae-6bee-cc179b2a6400@grimberg.me>
Date: Wed, 25 Sep 2019 17:28:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926002023.14033-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_172857_861817_C173D73E 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> v2:
>    Updated is_visible to not show sqsize attribute on pcie controllers

Why? isn't sqsize assigned for pci controllers as well?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
