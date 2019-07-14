Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A332A67F80
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 17:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LT+7B0TkuVGqwWmaXJOqavloYK0b5mYABWZhWrha5fo=; b=GBX4J2EJuaNyd2aGg1KOHQto+
	2mKRI0fYj0NMgcvw05Ui8ymUDfytjnQBzy7jMWsj+57INgeosxgahtl6enYbpczsCjydXUsVdHzZj
	taCfGneZkJzxan3TXIgFgdIAyM9fuvjB3YO6onjxfmpNH3PY89YlduLT0NJsBc1XhrI92e67fluV8
	VO3nCGHQMN1s+eVWkaI1McAJoQJB0R+BJuvXdUqRy/Jche2bx2+P1v2Mz9dKcgpD91fZuAMHA3/Gf
	DbmDIZFKrL6QNg6an6F8e+oV1645p5mSKhkcKS66upxVKPd4us7W82zglvqWrXid3cG5AsmQcWifI
	yZpRju46A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfzD-0001ZA-OM; Sun, 14 Jul 2019 15:00:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfz2-0001Mi-3x
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 15:00:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id b3so7038751plr.4
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 08:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=PWqx9m07sCIxtNdsROVAHEQvusrShvqIDO//7OQwq3M=;
 b=OCcm7GQd4PS4byo0H3ivaaO1oZd6gKfdn/hj7McaJXqP3PavmtilnfnHBFI6nNH6xh
 q0s0Hhq5hynmyxm7wGPOF4/pvrFvz2uqTfKFv4uK3KPGQrtMsQmRo3RiqeOK7wGZ8Ypp
 nhyP0XdtvSrLmSnhBInGxD5AiiL4vjNDPbyEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=PWqx9m07sCIxtNdsROVAHEQvusrShvqIDO//7OQwq3M=;
 b=XtLsnDz0/S531zq0svQeNSneg2AiMZdJPEcd1kpFjmJisHwXv160a05tC7q33xCpuV
 FVzgu73c+1Jp4aypyGjcObtV3gl7uTP9bCCGbiCw4BLEV09Jot4ObYMJbIcNeW9iwtIf
 Xyom8aCeCXXX9LeOA/FyMcU85RmY8DCrJeqFnmEZvGBCTAuZNZSplECSlwVAEQJtDgMM
 W9Hs5En2D/8Em+lgq0c+ssMlDvZiXCYql+vDlblEEo000XYFMf57xS0OQuBv8Vh25xQ1
 JkQ3H5xwzPDkHC4ObpsxrZ1AfwvTSGOtUtW7VP5LqnOnQObP2z+dv8kvEg0sU4RfSV84
 ANgA==
X-Gm-Message-State: APjAAAVbpYphBqKPHYRn/wkcVBM1lbDtk6ZEXigjAE+DqFdK0ff1hG5d
 LwjboEbYvfRXjGCimGPAc1/w9Q==
X-Google-Smtp-Source: APXvYqwslgLPClWqe8n7MFug2jDE/s0apcwsJKou7MvypLN6F3qtKbcLQFdNob5gaBc6eBv48266Mg==
X-Received: by 2002:a17:902:7088:: with SMTP id
 z8mr23501565plk.125.1563116411402; 
 Sun, 14 Jul 2019 08:00:11 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 3sm15542325pfg.186.2019.07.14.08.00.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 08:00:10 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] nvme-fabrics: allow discovery subsystems accept a
 kato
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-2-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <81232ff3-15e5-5583-0459-8d044b581c47@broadcom.com>
Date: Sun, 14 Jul 2019 08:00:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712180211.26333-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_080012_173711_EA505A91 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/12/2019 11:02 AM, Sagi Grimberg wrote:
> This modifies the behavior of discovery subsystems to accept
> a kato as a preparation to support discovery log change
> events. This also means that now every discovery controller
> will have a default kato value, and for non-persistent connections
> the host needs to pass in a zero kato value (keep_alive_tmo=0).
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/fabrics.c | 12 ++----------
>   1 file changed, 2 insertions(+), 10 deletions(-)
>
>

Reviewed-by: James Smart <james.smart@broadcom.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
