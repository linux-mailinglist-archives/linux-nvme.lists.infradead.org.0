Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A60B96CE
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=nV84vXl42cZAhdnjRypmL+ZNJ
	yBD30PxaRYv4nT/cpAQ/3kE/3aB8oneDIGDakpEolhZKxqwpapsAfZy4dCr2L2WTyaoFufUK7+K4U
	k3slBYH4m99RhmAmGicGHdcPT/zbDQPczX2DpS9famx24gLMjxEDB/BEFXeIfLC+L8qkqeOXUDKyO
	FOCZOZCJu2ME7O6605BbAv3cj36hKyUiNGUp9Cpl8DhuyRgZC5/5Wm7YcsigzBQBuyOdOy1uWymez
	K1qukRE5lHlcvyqDVf1iCovqCrCeghoBKjlyweE4ycOK6LEueS7b1bZ4tG9OsGWH+cSCWJSa91dox
	hdTMEJkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBN6N-0005l1-Jd; Fri, 20 Sep 2019 17:53:51 +0000
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBN6I-0005kh-TX
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:53:48 +0000
Received: by mail-wr1-f48.google.com with SMTP id v8so7675991wrt.2
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 10:53:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=F+gdZpvxyagUpm73AiW+C6rHfwIMTE4rx/gVt4K6rASVCeYyFcUlPECJ8fBP+YqCru
 nMdqBWP/mvM8Pu0BkyhHixAUu4oUdXR6m6w8KhsKk3QU4qJ9mi3wcWR9XOZlY4v4u88m
 TYMdxz9oiyZO24Xxz42hGFu6xXonu26Jv8UcHfateJUFU+ACs4c/RW9dtNup0n8QPayt
 Nuj6dEYizAgyIm7tNgQfLY+j/Y8/uQfjE5E1wDwatCTdyJ35tU1ymj2xDIvPAaiIRZOK
 S2+fBT26bqMTA9fsPw/Mvz04h9/L/qjJ8Lz7X4Vrg1RuKnL9y2nGgOQ+6dKJSDKK23B9
 JQIw==
X-Gm-Message-State: APjAAAW1rDtgTwBnbE/ichtgWu6NAmW+uLyu0ascKUnTRRpE1o4sjxfO
 aK7caYZPf5wjSM0SIzvDU4I=
X-Google-Smtp-Source: APXvYqwd1Z3bZI6XJPpYR4SkX7fwz8xnyes5qjxd/FhudI7G7o2sE/PKhjnB92oAPQ85H5uU3sJfgw==
X-Received: by 2002:adf:f406:: with SMTP id g6mr12424357wro.325.1569002025725; 
 Fri, 20 Sep 2019 10:53:45 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id h17sm4957329wme.6.2019.09.20.10.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:53:45 -0700 (PDT)
Subject: Re: [PATCHv2 3/6] nvme: Restart request timers in resetting state
To: kbusch@kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-4-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3a7bc2e8-24fd-9312-403c-992b1f1ff48e@grimberg.me>
Date: Fri, 20 Sep 2019 10:53:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919213431.7864-4-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_105346_954942_BE8C62CC 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
