Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1441757B67
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 07:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AFstp3AmEuT2QmSlvgy7VHDu9jBNMvEhPOkmcYLrXT4=; b=BYsTiy4lF7M85v5pGQ7Y+PYKr
	gWnv/+iYGWJT5/UuvUW+8Q47er3YgkwcvcrOUiQVaum/G7Rp3r9NuOTX8Yb1C0Q/OHl5NoHss/hgu
	mKd0EnqVJOjd5gMnzpfk0qIwVeSmiA0tZz5k+/po2QAtLXIAeqLC7iybrHoCwCcnsgjpdWxqEs8Qy
	iBZ5iD6COnt13DKdg5tDD3nn4W9g+etrtSMT4wFUNlll1eZU9ACPFO7oKQTU1RvSLvnGwvA4/BKTn
	Kqs29FYUuczbxaPdHWh/2GP8Ko9C6ntN/tgigUJkUp+0TZ1TaIFiKilxQ6xHG4S49hGYA8Q3ei1hl
	cQ470exHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMxV-00082k-Kv; Thu, 27 Jun 2019 05:28:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqi-0007bR-F7
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=utEDe7VH1xlhie4BK4ccu6Mx/3HO6TAVDl+yZtd/ZMI=; b=C5Awet41Z5Yy2LEf1sZoBEwhHq
 MnX2FiwQLojATBBqwfb8OXlcdVobwfvg9tK9u+krpQxpLadC7ZsvOawrwtsg5rXa/DjBpwDL/LjJu
 sJyCngo9K23NCue98PZp4R5YETdPOI18zwZS3wLk4e33Ac4nLICiIBc3CQbFFou5W8eh06h058cfH
 TyHCk5G9TCQpIELHT2F8O3EKI03Vi7WViG2j2fH53EeZIijv2W8W3Jcjnlf0mXf6rzQ/f+0r+DjUP
 vZgKaTMWZfm9qmHisBk/2T6nCNxrE4+rElNpiEH3mD3wa7y5Z3jC74IqOlmM+7kmK+XPSPawcVQ1b
 I+06ssCw==;
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIdn-0004If-MD
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 00:51:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id z75so173578pgz.5
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 17:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=utEDe7VH1xlhie4BK4ccu6Mx/3HO6TAVDl+yZtd/ZMI=;
 b=Hfl9WvmbRXTmdLTfGi2eD8/l311Oc4AWfZhr77tx1/hdlf1fH7egabj6/9zz9v8lRk
 ij4RKDNnuVQSFUqJsHIOk+Ui/BiTUb/mECBPoY8xQh8WHIZ1D/zl3C97ABAQwJzALwhD
 WQuq5emi2wqwFdpt2zn5BtchrYgu1KiC1TwuIs1XEgNESd/QkXuGT9tWVPJnpNYM4t5e
 6ACNf4ZFmakcLMWCgxsR6LqAighliAe1ojZFzPg29V10+DBciSZs2+qb1pOsDFmkP1rm
 8B6tUKgf+ytLN7FaQGtBYn+yavwCV8W095Hui/uvgWvwbPxF5IY9JV+qpdZlF5R27Pxi
 0y+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=utEDe7VH1xlhie4BK4ccu6Mx/3HO6TAVDl+yZtd/ZMI=;
 b=sU3khI0w1Of1gZycwQKzNNNfFCdtTcOVPajrUXXmK1MSNPgqzQCh5WgAusgxz5u8Pd
 6KTBVCcQ1GYZa/c32RQBx9Nj7G4WBc4u017jOpkJvUicdlEy7S7XsUCY+98E9rim/m9r
 ljcX+lURmGIBjGR0O0X6IR5zZgwmfk+gK6IP0EzizJ+BiYLyGjfc06BPZjtyhs4bSbZR
 sn99Oe2G9+dfbGN4AzWe0Djyf/sfZs2XKP3Lz6TXGo0IUasi5XRl979/HXqF1+ElN8na
 aDpd6/QRCSHQEkImf+kQeu+SxsypVd/3AMFoB81ZcYnXb0n0w7l+jIgzwkg60DjuMy4R
 ukTw==
X-Gm-Message-State: APjAAAU8GqCZjoZS0urRyl+5DgbQxR7pTaIHFL/UCSZk2p6PyZKAHLx3
 kvOOvD4kAx0fSlPXj6OmA2UkKh+k
X-Google-Smtp-Source: APXvYqy0fVtZ258fBEVhJalfCw8e11UdMCnOfl+Y7TXETeZsCC5tX7rNR7kgOy2nKRPBeMYooHcHeQ==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr2377398pjp.47.1561596589989; 
 Wed, 26 Jun 2019 17:49:49 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m6sm317730pgr.18.2019.06.26.17.49.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 17:49:49 -0700 (PDT)
Subject: Re: [EXT] Re: [PATCH] nvme-fc: fix module unloads while lports still
 pending
To: Arun Easi <aeasi@marvell.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
 <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
 <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
 <alpine.LRH.2.21.9999.1906261725120.7630@mvluser05.qlc.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <1011783c-e0c0-4dba-824e-821bf5b4955f@gmail.com>
Date: Wed, 26 Jun 2019 17:49:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1906261725120.7630@mvluser05.qlc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_015155_940854_5E3899A6 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/26/2019 5:28 PM, Arun Easi wrote:
> Attaching the patch I was referring earlier. Maybe the infinite loop in
> exit could be changed to a time bound one.
> 
> -Arun
> 

Interesting. I still prefer the stronger referencing while anything is 
outstanding as I think it's really ugly to get into __exit at all when 
things haven't cleaned up, and once in __exit, there's no going back.
Also concerned with:
- hopefully module load checking prevents loading of another lldd
   while in this state. Ugly for that thing if its rejected and the
   load has to be retried.
- I don't like the long delays (could be a minute plus) for unload 
command while it waits - anyone stuck in the wait will be asking 
questions as to why
- Exiting after a time delay isn't great as it's just as bad as the 
existing code that left with things not cleaned up. I was hoping to 
correct that.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
