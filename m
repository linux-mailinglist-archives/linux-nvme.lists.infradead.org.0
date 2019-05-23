Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545AB274BA
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 05:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=Gnqwqhae7zwkQY2KRgKsoWPK7
	KEJj/hCHeL60unO/pwbqGMfB3XH1DuLP5cn7LAbr4jch60xFiM4JnlMBE2MUtJHC9aK2eTZtviA4/
	w1Y/Cj8Np+OHkNs9dhxitJdtvr3KO+hPQ80hEdtXrpPLc4FD/g6q1Spuv84tFxNLjUEFo+EwDizRH
	z7Xw8YA0U+WsDWy95mhVMLyRIpnC5onIwsygm9VJrtpDFK8Il1tiAJoDXt1axDdYqowXyuUNjl2+a
	6RRJ6T/AgMwOY1KyjUyJfYWLzw8oZF+fDn9xs1f8dNfkZ6SPxA/aBpyhuXgpYgeNpcuaDOOugpoXv
	2v9p6vDBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeF2-0001JA-VS; Thu, 23 May 2019 03:18:04 +0000
Received: from mail-pf1-f178.google.com ([209.85.210.178])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeEy-0001II-4w
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 03:18:01 +0000
Received: by mail-pf1-f178.google.com with SMTP id z28so2424894pfk.0
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 20:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=pYzbnCQI+96hzjJRGp0w9j1PFUV3BBWI6qIfoE4rJkMDmXupHPrsdwBk33Ow5BwuRb
 z7eNxqoiBXidEczABbTQqNkV/gbvwBwZxgJewCfCYsGFk6o5xwxcNWWan9G5oIygvyeX
 aOgau9lpvAafeAvoS2y5pKbIQN44CifwwM/QioZyMI47DW1v4YWlPwbXfX7MmaSjtKRU
 q4SkIBt0zAtvpOJm/gOS9dNBzjELVBKOVTdtQ4/ta2lOqTd1oyeb0VVUq+atFOvVeLWi
 qwfm8Wzl9F1YJInpDfhEsaE6PP91DXrhxxo4/4SprTZgL66omwCtg2FMnFQMs2/D8O/R
 otJA==
X-Gm-Message-State: APjAAAX76BtdWguDoDBZxQ64QuVFG7Wzit6khs5v95xth0EXK2slfyg+
 vkYfD32CgrttUSlLjJfxvP7Oh/HR
X-Google-Smtp-Source: APXvYqzeuIjFYEy0LrT+H/Z9u3ntObHs0/OxR5mqIvn1bW1RuiaccV1bOJPCXssbxGxZcpDzo64JYw==
X-Received: by 2002:a62:5e42:: with SMTP id s63mr97966801pfb.78.1558581478614; 
 Wed, 22 May 2019 20:17:58 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id e6sm46537482pfl.115.2019.05.22.20.17.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 20:17:57 -0700 (PDT)
Subject: Re: [PATCH] nvmet: get rid of extra line in the tcp code
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3d7daf4d-9bfa-ed4d-67a0-597da8e936a7@grimberg.me>
Date: Wed, 22 May 2019 20:17:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_201800_190713_7C1482F0 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.178 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
