Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95774AAD34
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vY3c5WoXlN7z9WFZpMHo33SBJKG9e6s9xEJB03L8RLA=; b=Z3ambhRQa0dBU6N7+cYe4SYEs
	JtisW7PCoO295N1Kdz6/O8zCocPpsQa9/RG2cwmRKJjEAsR46/AGVe7NX1161SFb3VCifPzzxiiIU
	tI6MlqD5lq/dN3HFoIjIc3+7tiw8fXRWCRjy9RxoBp2WrI05tIQeCUZ+67NnzX/wEuF3qDC61qAKT
	4AxmshRwSSB3hYtM+LJTFYe7I/LuZcsAUrEstEHL9YU35rmb6qAhUuZXEtESqlpi2gc/Ik0z3IynH
	0FgaEd+J4ED9eIL6kyrPWkYXEta0/Vy2tjj6h4vboI0T4WqNd6FL0Q9rAi+3KJ6p/9ycNKPMAhTy5
	4YaJgEPkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yXf-0006xg-SE; Thu, 05 Sep 2019 20:39:43 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yXU-0006wj-Rq
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:39:34 +0000
Received: by mail-wr1-f65.google.com with SMTP id w13so4265998wru.7
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xCf4ubhwUPcF/ihLJklu0DrlhXX0OM88DDWJtUGoY+I=;
 b=MNgQ2XS2hczMaAoPn7FKnkKve9tbMDg6KGeVx13EVtO/WvdqgroAkaGJPF5pkbsXRl
 sTwpO0B8NlBTVDhfhfuQbXKk24DmYAwcl8yL9k+G906ecwgicfGS4i0t1AGWX/LgjvJ4
 Ecmc9l5L5GPzoyNhUFHS1BFkkdsaVsKQTNqwf8356ch3gT+vLjkvLqMZVUiIp1IPCcon
 tQylMQbeZzQapGEQWUR87m5zRR70hulbZcDGs69VjLKt2+kFjFlMnWpa7knMJX7CHL4O
 KBhW0/mAeIXaxuwdVFlTexq24os5AXQE4lejqOlFstaOBtXAE9odGN1N+lvvhGdz7l80
 zuDQ==
X-Gm-Message-State: APjAAAURH+37SLnFwYZsl/13XfGyCeNEW37mTgPx4KunXEIsVv1w1tw+
 KlGPnHMxa+cLT+x2O+Jvz4M=
X-Google-Smtp-Source: APXvYqyPFQLUJLZY1hSCX87ucCt7l2ZQG82jQ2kRQq4Q9uR3kzu+MciSi0ZAxEuvq7VnJQ4h1J7Kbg==
X-Received: by 2002:adf:9e09:: with SMTP id u9mr4157016wre.169.1567715970159; 
 Thu, 05 Sep 2019 13:39:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s1sm4789488wrg.80.2019.09.05.13.39.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:39:29 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme: Restart request timers in resetting state
To: Keith Busch <kbusch@kernel.org>
References: <20190905142607.24897-1-kbusch@kernel.org>
 <65aa0709-c8a7-2988-864a-4bda0a4c3ce8@grimberg.me>
 <20190905202557.GA25467@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d5d5efd7-cbab-4e07-3e20-69b3c3ae1de8@grimberg.me>
Date: Thu, 5 Sep 2019 13:39:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905202557.GA25467@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_133932_903801_ADF414C2 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> +	/*
>>> +	 * Restart the timer if a controller reset is already scheduled. Any
>>> +	 * timed out commands would be handled before entering the connecting
>>> +	 * state.
>>> +	 */
>>> +	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
>>> +		return BLK_EH_RESET_TIMER;
>>> +
>>>    	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {
>>
>> Not sure I understand what exactly is this solving? if the controller is
>> not responding to a connect command, we just added another ADMIN_TIMEOUT
>> to failing it.
> 
> The connect command is sent in the CONNECTING state, no? So that's not
> affected by this.

Right. but if the channel failed in connect, we will not transition to
RESTTING and handle the failure in the timeout handler. I will need to
test what is the effect here.

> The point of this patch is to not do anything in a
> reset state because whatever set the reset state is responsible for
> clearing any commands prior to exiting that state.

OK, we might need a bit more to make this correct in the fabrics
drivers.

> But the motivation for why I'm bringing this up now is that it also
> prepares for PATCH 2/5. That one uses the RESETTING state when the
> controller reports CSTS.PP. We do not want to schedule a reset when the
> controller is in that state, and we also expect any IO dispatched prior to
> seeing CSTS.PP may time out. Any IO should complete once CSTS.PP clears,
> so not escalating recovery is the correct action during that window,
> and we use the state machine to coordinate that.

I think that patch 2/5 needs some more in-code documentation to explain
why its mangling with the controller state machine without going through
the normal state changing operations.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
