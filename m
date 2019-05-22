Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4840270C4
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 22:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImLdWAje7YztFT+7nUR1eg9cflOSbiY+xE1sZm2orqY=; b=h6MZxK2I94zhIo
	4RtuyyftK66EQtASEjwtliCHjqdjRqBKl0SBhAaP23KWCv5ZieG1Gp6nuy9e5oTYI+IDmDkzy6ntr
	noghEn3RyoUS2yGHCx5JwU1wYsxXvgE/kkfvHsWqQEhqkRUHwFKNVbsXY327QiUKjtV1OBVgCUPRm
	bfhwlnLshsN2D/U8LIkjFqzzwF27pOZimrGUBAehqDfL1BRdYC7HknRS3vjecPdF1lK7GDKAwk0Ne
	m9wYEHnuXMObTLzOqyLSDXhkiO8Q6Hb0GxNo3vBPSUjpOfM3Xl1enPKa/X+d+gnJ+PpKUTpZPDbAo
	IkvECpSa0L6XqSgd9VCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXjM-0001VK-78; Wed, 22 May 2019 20:20:56 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXjG-0001UV-1q
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 20:20:51 +0000
Received: by mail-ed1-f68.google.com with SMTP id n17so5648895edb.0
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 13:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HIQjU7W1517xzC6E8FPYkI2SHzlzEbtjalA/f08V8fg=;
 b=KWdw8oSFjaJbQkFHuJ9bZrg1vZ1OhhG4X71lIq2dFyALRprG2stScGxQerhhMOFG8u
 U+LCEL1ehLEbs2mM6sjireGk4mGYVVz/1hihoxXItHUwp7lZogzA1pdaWI+X7ohymB11
 k/NFL0fqm7gIWb8hhWUrfiDg/Tgnv4+sbDyceMiruJy9H+DlptPVG9DBEBE4lcEX9igF
 W78vFBKvK2maotw8avpSszipzVO5RWf1epHKPZuG+82i7IO3y/sL9pQS5qsWM0MfxoxR
 /WFlRlKIb7daWHJuRxT9sc4yIaD4VtwmWSRAgMjyvZ6GQ+YyKiP20qUgZNYm1fbiUGFv
 br8A==
X-Gm-Message-State: APjAAAV/liJV9rz0ErFog/uUhAUtGcttITPkdWYzRhuoYk5iaHHoI09O
 LzWLM5U3ynfidal3QXxBv+A=
X-Google-Smtp-Source: APXvYqwxFbbzeFEnij6ywPND3rClzaDLu2aezuK3tbBNZK81WKU64tCi3FMqFpVPMlh8+/13I0yqdA==
X-Received: by 2002:a50:9968:: with SMTP id l37mr91263691edb.143.1558556448074; 
 Wed, 22 May 2019 13:20:48 -0700 (PDT)
Received: from [192.168.1.6] (178-117-55-239.access.telenet.be.
 [178.117.55.239])
 by smtp.gmail.com with ESMTPSA id a3sm7330472edc.75.2019.05.22.13.20.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:20:47 -0700 (PDT)
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
To: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@kernel.dk>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
References: <20190522174812.5597-1-keith.busch@intel.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <721e059e-ed88-734c-fea2-3637e6d31f4c@acm.org>
Date: Wed, 22 May 2019 22:20:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522174812.5597-1-keith.busch@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_132050_086518_4274AB28 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
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
Cc: Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/22/19 7:48 PM, Keith Busch wrote:
> Hardware may temporarily stop processing commands that have
> been dispatched to it while activating new firmware. Some target
> implementation's paused state time exceeds the default request expiry,
> so any request dispatched before the driver could quiesce for the
> hardware's paused state will time out, and handling this may interrupt
> the firmware activation.
> 
> This two-part series provides a way for drivers to reset dispatched
> requests' timeout deadline, then uses this new mechanism from the nvme
> driver's fw activation work.

Hi Keith,

Is it essential to modify the block layer to implement this behavior
change? Would it be possible to implement this behavior change by
modifying the NVMe driver only, e.g. by modifying the nvme_timeout()
function and by making that function return BLK_EH_RESET_TIMER while new
firmware is being activated?

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
