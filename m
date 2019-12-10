Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94460119492
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 22:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VAy61hAKsIQGc5/uX4ZQM+J7GIPlY4RZBOQW99Who9c=; b=rj5RSFajhoh5AszDOx7iS8sEb
	fSW5+QammXCQocqcJVc9SrsBV27CPLmNe9dP8mgpTRLDBt6OZpqXgMP/uCTNm6KZNYls9EJNHsJy3
	8H7DHI4DUp/xJRoC+uM1/xxIv5aUzH659so/DLRIzuL4Is+5JWMAUfZLRcR/TD1qpUfgw6nmbUwts
	1U7hjbu6KFh/0/+0I84+zmKItxwxVm1RGTIEDJQA8HTYlLYpn1i2pDM2O2irC0/D2lKmoA3Gv2gUB
	hArhYwiI3LkifjcEImpb+hmwB8Id0o4ntIfKqzLdcb3+dNtYYXDwPvpR/YegDU8toC4WGDffmFxdP
	p0IMAZAIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iems3-0002jt-EW; Tue, 10 Dec 2019 21:16:39 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iempr-00083k-BT
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 21:14:25 +0000
Received: by mail-ot1-f67.google.com with SMTP id a15so16885425otf.1
 for <linux-nvme@lists.infradead.org>; Tue, 10 Dec 2019 13:14:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z7qU7EV+QjxJaytqiirchdo8R8ATjtFltwuZGfxAqBI=;
 b=OLhC3ncLU/+a8t2uoREHxfJsTB2FnN0E+WNTeJEu8OkSt+8qorn7Ky7c6fl7hrjqQ7
 peBmDI1J8oQHcTNjLjqMiIGolyEcNj7bgEsbS8EOuL/ibkEhd/BOaEYPll6B6fm2/1qn
 21sQO8nHQQEVxoORUW3sr7GuPXQsbSUtA/EFVA9gKDSxK9jS3dcSEHExazbxlc/ptnUF
 P9GnJ4DQ97hpZzSEat6Rm+54bX7taPYdVqXlwqPs1vfpswqv7R/GT32ewFu+LnJuJE3L
 cRg+d5xtH11mFIQgn26wnWWIQ2RWoRvxaDLzkYlCZVprZ5BmExlE/nfhzxw86MsCblVy
 CS4w==
X-Gm-Message-State: APjAAAWHJdNpAYX3wI9RfMzFgcur1NzCEkkKQQuCIVALa42T6f0QuhhQ
 L2VDXB9XhUVEKyVtjJqbaHs=
X-Google-Smtp-Source: APXvYqwUW67A9Ep+2CKH+b7/ggU+joAn86Vuo//+GnoXcjmtEJtp4Yl0RmdY51pt8IKlx3Z/dbcRiw==
X-Received: by 2002:a9d:6b06:: with SMTP id g6mr27473199otp.93.1576012461779; 
 Tue, 10 Dec 2019 13:14:21 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id h132sm1829867oif.44.2019.12.10.13.14.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 13:14:21 -0800 (PST)
Subject: Re: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
To: Keith Busch <kbusch@kernel.org>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-3-kbusch@kernel.org>
 <6d55a705-6a43-5b47-166c-5d2b458fd6a5@grimberg.me>
 <20191210202506.GA26810@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c58e2cb5-e03c-c56f-8c67-a791ac1eb2c6@grimberg.me>
Date: Tue, 10 Dec 2019 13:14:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210202506.GA26810@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131423_776074_2697C795 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bigeasy@linutronix.de, tglx@linutronix.de, hch@lst.de,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Question Keith,
>>
>> If I have say 24 (or more) devices with a queue mapped to a cpu, and we
>> happen to just reap in the primary handler for all devices, all the time,
>> are we safe from cpu lockup?
> 
> I can't readily test that scenario, but I'm skeptical a workload
> can keep the primary handler running without ever seeing it return
> IRQ_WAKE_THREAD. If that is really a problem, we can mitigate it by
> limiting the number of CQEs the primary handler may process.

Theoretically speaking, even if you limit to 1 cqe, the universe can
align such that you will always reap in the primary handler right?
The more devices we have in the system mapping a vector to the
same cpu core will increase the likelihood of this happening.

I guess it is a corner-case, but I'm thinking we want to be a 100%
covered. Usually what drivers do is defer to a kthread/tasklet/napi
context without reaping in the primary handler.

So if we have this optimization, perhaps something else in the irq
infrastructure should take care of cpu lockup prevention?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
