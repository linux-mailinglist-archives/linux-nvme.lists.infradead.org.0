Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F50C4BF33
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nwwq7NwPo5HU5aQKlN5U0AQ88Dc9Ci1RTXb2EyDPW8o=; b=ONe07TVRxZHMlAKwjNAGvG8fJ
	zNTKexbJxOFLwsYyNuFyJRMKevRE+qoLg+iBj3yxp2H3v8VT+Y0KcJdyE7v170W8LobDz/EJfkWut
	M+sKcXSz1rOpE5HKScYsMl+WgIm7dY3K5JRRlyHmh09jS6YBA9sfXbwEn+gm9b1WGFHqW0ePApX69
	T5ZTYiSV+jnmYLHmLr9Xo+YvUzoA9eaJg7TWw1Hp2/lW4dX/HTNCWDNJUk3T7cvxqwA3/P2BuoybH
	//WNrVvfslrYqdt3qDpE/otBtgq9NoBs5sWby3ywOq4ehkb1KbqU8EkO8QshOwbsvk99VPMkbmleT
	1a5tHu7Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddxN-0006R6-87; Wed, 19 Jun 2019 17:01:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddxI-0006Qb-6i
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:01:05 +0000
Received: by mail-ot1-f65.google.com with SMTP id r21so17142283otq.6
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:01:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pq9FbpKw9X8R9GcMttew4n3AyXMm5oblTqWpcw0Oack=;
 b=IClQKt7Tat6UoEDyUmZN1RoPRj+7M3dLknmPShmVVvzi9Zujx8YislL4WpcCc3UEoN
 b6Q1blqQCjVgylN8/HghxGZA4aCu6fyIvq40O/fUA/aXY4nFt/x/CsKf4Ye5NGDamFzo
 qgmKNAWLPmAEApOrzg1hHi1YdIN63uyrAypHJBDRfLjvLIQOZd0EzhUYwv00HyMa7RC6
 CNSjQ5tCcnC22G2GTLVFkhaKWQffFc2mZ8h/IeiRyAAEIOaWODn1vt2CeZCQkFfk18hR
 +QyC7Wbobk1AVIefxZqW2aJNO7H93TSbg9MHTgc6DbKCj/39lganpWFT3tsN+pZrIV+O
 QuEw==
X-Gm-Message-State: APjAAAWlTth+CJZSpWi5VUeUzYZtkTkr4kN1jtxAhD/9GHubBAEBLdNt
 puDfk5WdxCeP/18NnD6GGjc=
X-Google-Smtp-Source: APXvYqzwzejeSpvQ8oiUoDx7Ntc9nn1U1EkMMxmLLYzwszaVkHL2P5+jQn9pZ0WfFdAsQwS6Lk+hoA==
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr71723866otq.320.1560963663202; 
 Wed, 19 Jun 2019 10:01:03 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id x193sm7293805oix.15.2019.06.19.10.01.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:01:02 -0700 (PDT)
Subject: Re: [PATCH V7 0/7] nvme-cli: Introduce nvme-status mapping with errno
To: Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c1b01a72-e0d8-6a1d-ac74-0b6e46b0836f@grimberg.me>
Date: Wed, 19 Jun 2019 10:01:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_100104_241719_1D379FC9 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For the series:

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
