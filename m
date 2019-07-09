Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7F563D45
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8xeURS/oAjkrKYpeNZTaIoQZGs9MC/Wcapq1j4/JCKc=; b=MOto3ZeKIG56rZFt3EG1bw9r0
	oquhBwxhCjsrvAzbKfQlK+CEe5+jDdnIcafogfop00XbMaa3G9S2xuCfUz+idjRNJmQ8TJz144eyE
	vCd55cBkiq7DPsrJsP3GNuEsYJ0+vF0H+5DNLDACaZzxvv9JhXpSiwvrjAUERaO4qFJ51ljWFLH/E
	wDT+NLFNRSPyzVMf2VtPpfHrGfvPVyZppqA/LMGLheOqz6J3/Y7hrrc290wzSPTrY9NTLt4eNStHW
	l9mcL7f6X2B0wz54be/IkPKE2yUkaWxZIKBoPMMeMNQB08nqHuvJq3CTWA63wGWcxHyGJrYlvG/Fd
	//ii/SJqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxcz-0000Zw-HM; Tue, 09 Jul 2019 21:26:21 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxco-0000ZM-Ps
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:26:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id d17so21459651oth.5
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 14:26:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aD81xi+5kvKberiw/rFW+CXNL8/5laSgcaqqlTk9sgg=;
 b=D0o00Bkg+ekLT+D444NiJTLboMz3SJ2vqp7z3XDhTPMQM26YUG/yFxOnsZvMOoInI3
 yeYtNQJeOsVdf4SFHzJmnNIHekes6r1vPQeUjHWMiX58KA+dxUbZ+S8S4U39aQedePoX
 c86YzmvbFB+A6lEIyrqhoK+4HC2J1GfZwA7L9obMnk3v9DSdBQOZM3h5+bAwNhoEe2Sq
 b75ACVj0Fe3LmBIpp1HZutvNZ6ZxjJoNuvFOWJBRAL7xyRIt6+Qv0nj7PEgy0tJkE5Jm
 1e3YP5FZvPv2YTPEG6NLST1i8nlRRzFAY55+nlJRsVVJB373ifjepW4GF8+0q27w5U4m
 H4PA==
X-Gm-Message-State: APjAAAVnD9me7gIKLzK1miDxd00X/FEdQStmUlnV0nYu+nhHBGpPv7GF
 CPMLTT63AEzPzcRL6Qen4ic=
X-Google-Smtp-Source: APXvYqymeXzhg8LSAGYlWFizkr1df4t9wB63l/3H0lE75gO77rREV855M+l3FsyNf8oeJYHmEJDLOQ==
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr884134otp.6.1562707567097;
 Tue, 09 Jul 2019 14:26:07 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o23sm45787oie.20.2019.07.09.14.26.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 14:26:06 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
To: Christoph Hellwig <hch@lst.de>
References: <20190703210804.23137-1-sagi@grimberg.me>
 <20190709202201.GB8405@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
Date: Tue, 9 Jul 2019 14:26:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709202201.GB8405@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142610_844991_09F4FA1E 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Simple polling support via socket busy_poll interface.
>> Although we do not shutdown interrupts but simply hammer
>> the socket poll, we can sometimes find completions faster
>> than the normal interrupt driven RX path.
>>
>> We add per queue nr_cqe counter that resets every time
>> RX path is invoked such that .poll callback can return it
>> to stay consistent with the semantics.
>>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
>> ---
>> There is quite a bit more to do in this direction such as
>> asking the net device to allocate polling rings and steer our
>> polling queues to them, but that would require some infrastructure
>> work in the networking stack.
>>
>> With this alone, even while still absorbing the net device interrupts
>> I'm seeing around 10%-20% latency improvement while sacrificing lots
>> of cpu cycles for it.
> 
> Looks good enough to me, especially now that we need to explicitly opt
> into polling queues.

Cool, so unless we have any objections, lets let it sit in 5.3?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
