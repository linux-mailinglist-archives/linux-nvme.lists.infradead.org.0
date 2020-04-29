Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCC11BD0CC
	for <lists+linux-nvme@lfdr.de>; Wed, 29 Apr 2020 02:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=mX+UYFn8XPRFT6UwHuv53sJGA
	eYW+uzz5xig8m3r09MEltJskAWmlPXaD5QY8fJdo909LOj5vjlZmAqgWhSot/sWqgIdghOCc9OQ2o
	/ess5QkCA6iRFAFTu9zMVmqmM0t7UCfTvUePfCnXnpe5Ub1dkHo2yrZtju9Qa4JusD2h9/rnct11E
	S+k9PxjXxRMNkcEDaGjF0QA4vNAYvyM//h4fuyoHDj3xqUdQqU9XOl0jq3NKf+93pUw+c6SQuBwz/
	hUama86vZ7GvdeGAfAIHwBHoRAQBXl9jC7faYHv00Nawz1cFSec0fGYpQ9jR3qxHqCWD880YB63++
	69VXNC2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTaDi-0004kg-El; Wed, 29 Apr 2020 00:04:58 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTaDd-0004kI-Ku
 for linux-nvme@lists.infradead.org; Wed, 29 Apr 2020 00:04:55 +0000
Received: by mail-wm1-f65.google.com with SMTP id r26so45511wmh.0
 for <linux-nvme@lists.infradead.org>; Tue, 28 Apr 2020 17:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=FwfpMVNows71FCROdEkOGolhBir7I2c22sY1vqvCE9RFqVfzvJU7VhuIngmhG7KgCH
 1+B5YhVlYghmNHTIamZREqwgZDmMYMopxXmXiIpZzcCEgq1yep/QiRGS1KGgzlkVR8Xc
 rbD4UzCFRnLWoI9RCZo4M8Z/MbDwRjtR1H+H6pUzfdlNVNbiand8l3puABtCnD7MGy5V
 fyZIOynJ5m6LiFxB2W/853E0xOYkXFB9Vwvzf4J4orRw3MrIaChU7/K9PUZ/HBc8MfMQ
 sDKk2wTE3l3GXCZZ51yxshfYEnpGNw6/EpmJAYqxV2GS//5+oF0vlgdjmOPFVxJHqD8U
 hWUA==
X-Gm-Message-State: AGi0Pubk1bu27lMFw+f2Awr/JlHxoXjFvxeFMSx2zGcMSFkr/SlR8qUU
 4aGYkSff/3o9ZhyHq1NsF+olXJis
X-Google-Smtp-Source: APiQypJ1Nb6sU5/3egj7sibIzfG+tCfYiSKuuQigPYfrZ/z3l4fuQaMDVJa2sEVNe9BvRu0xWmDgEg==
X-Received: by 2002:a7b:c1c4:: with SMTP id a4mr69987wmj.86.1588118690980;
 Tue, 28 Apr 2020 17:04:50 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5185:4503:ed8e:c2bb?
 ([2601:647:4802:9070:5185:4503:ed8e:c2bb])
 by smtp.gmail.com with ESMTPSA id c1sm28764822wrc.4.2020.04.28.17.04.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 17:04:50 -0700 (PDT)
Subject: Re: [PATCH] nvmet: remove unused variable
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a72a5cbe-0bb8-7413-706d-cdf47356c58b@grimberg.me>
Date: Tue, 28 Apr 2020 17:04:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_170453_687862_4ED058FC 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
