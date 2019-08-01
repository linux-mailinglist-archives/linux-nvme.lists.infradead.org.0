Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161797E2AC
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 20:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LmlBoh6akDGp4891L1fWGFW94O7OjBzI+2tLPyjG52Y=; b=M7Y2ZNLRdibCjewg6ksIkk0Rp
	asxhbmRZFSHDG4CwKrVwgmKVsiXuzGhmgECgbZATyIN8+LQH8yL+YpxkG4ecjCVUUkimdSKbGuNAQ
	TRKsKHep8Moz81CzXRuIWAJ43z1cCw78OwKQc+t+RwkEhdkIIfbZma8Bor+ZgiME21NYMs6PUKDAA
	DU2oR0tIWmU4J1LnT6hmgBKSTMmuRYcGG64rXKZ4DRaUVQ9vqxduf38J+PNQDCXhqi6TaR8SF0COB
	fOQZnWMtlnnAnV28BwXYkTGy3t0qgt6bzFdLNLWxaLVRlxK1bMA2LN+CeKSrrjV4Li/i93aC5/aud
	gJq20aihQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htGBh-0004VU-OO; Thu, 01 Aug 2019 18:52:29 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htGBc-0004VA-Kv
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 18:52:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id v186so54792899oie.5
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 11:52:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ri9funpLMNTh7AebbIRv+mNvwFANc/lKVpNS8WoG+FY=;
 b=U0n62HKmMKbChFM28+bE2dqb8ODpvT7O7vqMLKmRlz4ikYDjH4hvO2Fu70cDovIYXM
 2+3mKy5jOfsQpNa7JBxH3FWvdo3Lqeb9KqLovUXEMuWW5lhr4O6wbZu5W5DwRhVwRUEu
 2rDE+x7NzvK0gLTtxosfGhC53TcQOUp/0dJpU4fmKAg/y8Wa+Y/6HVxqTOA2urdV+8lK
 K9I6IYnJSlsCiXI7cc2Q/kS7I62iihjbjvmMO70KWUVwVe6d0K+zQ+HJEohmMRw5ws/q
 QG3JYgOPCPLKe7ArZ/73oVWfUdpEfaLEP8+vIEQSRPyW7Gh/a66HHqyAM/97MuksHsN2
 GsnA==
X-Gm-Message-State: APjAAAUTNCoqJQqyvRbKsGX1kQbbl2xhI7WlteaX4F94eXtlPRpdsfp/
 aB/wlIHiv6WsOq1Lyb7B1s8=
X-Google-Smtp-Source: APXvYqxATU1i3wBWjNlE3etWfrA5OX9wbfCcw5N/K67/cKq1qjdvX9Hf9BW+S9r95+68Zesry6iBMg==
X-Received: by 2002:a05:6808:4d:: with SMTP id v13mr188415oic.22.1564685543866; 
 Thu, 01 Aug 2019 11:52:23 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id o23sm22459889oie.20.2019.08.01.11.52.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 11:52:23 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>
References: <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
 <20190731201634.GC15643@localhost.localdomain>
 <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
 <20190731205836.GD15643@localhost.localdomain>
 <68358e82-cbd5-6199-1329-89421c778dc0@grimberg.me>
 <20190731215437.GA15795@localhost.localdomain>
 <55631812-bc90-9dc1-53b7-a76696a7140e@grimberg.me>
 <20190801143331.GC15795@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <29109a74-ff16-24ca-21ea-d2a225228601@grimberg.me>
Date: Thu, 1 Aug 2019 11:52:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801143331.GC15795@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_115224_684865_5C675511 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> Well, I don't think we should do that. Unlike I/O commands, which can
>>>> failover to a different path, these admin commands are bound to the
>>>> specific controller. In case it takes minutes/hours/days for the
>>>> controller to restore normal operation, it will be unpleasant to say
>>>> the least to have admin operations get stuck for so long.
>>>
>>> Unpleasant for who? The scan_work is the only thing waiting for these
>>> commands, no one else should care because you can't run IO if you're
>>> stuck in very long reset anyway.
>>
>> The hung task detector would care, and a user who will attempt to issue
>> a passthru command, and the rest of the system that have one of the
>> kworkers sacrificed for a significant amount of time...
> 
> blk_execute_rq already defeats hung task detection for stalled IO.
> 
> My point, though, was passthru doesn't care about scan_work. A submitted
> passthru command is blocked for reset,

Not in fabrics drivers (unless I'm missing something that changed).

> so blocking scan_work doesn't make that situation any better or worse.

I think that when we talk about reset in fabrics, we have in mind a long
process (mainly because of the fact that network port failures are a lot
more frequent and span some amount of time). This is why fabric drivers,
when they get a transport error, they go into the reset flow and they
quiesce+terminate+unquiesce to fastfail admin commands.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
