Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09892773F4
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 00:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i6DjuYd3+U/BlIpH6Qc7HPjFojdBlgaquiya8E3Snmc=; b=fM81tzftsCl9WhjEhHwZ1MYZ6
	gbK1hD73BtDI3w7CA43H+AofnYzPmwn06pmtkh6By5I9o9bCQcc2wI7JNVaoUBg7+Ab+OWxKqj2JL
	GOUzFM8N4IdToVNiZSylsHlc3B+gnDK3z437nMC9kuJGe8ncwfl9KVlX5zvvt7rVAxYq6VSji439g
	hcWDtfAc+h0ZqlTcOQgOEMDaYkuL4GeS78R+HyIw/832ORcPVnLyT5ApuNjBKT1ZoPbINmJkXRLEh
	jBVbc5CKltVZeyh0phtiT/JRC0HHePXKTBuuegkFHkvchPkXjtssi7nhXUBGYEgssPY1DRM7zMM3P
	GJIgRE9iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8ah-0005eu-Be; Fri, 26 Jul 2019 22:21:31 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8aY-0005e9-2U
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 22:21:23 +0000
Received: by mail-pg1-f195.google.com with SMTP id i18so25390528pgl.11
 for <linux-nvme@lists.infradead.org>; Fri, 26 Jul 2019 15:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tX/zH/PNuI497S7quCepGSwc6KOajrviepHED1Ldz1U=;
 b=nKiHfRinOa+04pWY/Hky4NSeDNnU7VTbJaLaO/0miucsdHx4zfXa0sAdI0feAHgwvi
 Jd6aqkJDOPhw1DodF97DO/RzIKbo6HIyDoI2JeDlkwbGsdkv/R74hm3x/NpK6IZMBW8R
 mhdgPLTzk1jHTKyLLju0wmbs6oQaYr8UG2BzagwhLBiugKW0d7hXJd4GxECOHj/gtfcv
 cRyptSQEqyjK2dAr/IXyMST0Emz0oZV+HXuiZbLW9M6zxB5Q1MpRMPFFWXQkiFCDebzy
 n8CfVTL8MC7FfUfb5tUVQRTcy4154O8iZw3Ix3M1ZqatBuHAOBYm6XRpvm2BRkRNKApx
 wjlg==
X-Gm-Message-State: APjAAAWODtTgLuU2NAzlG96C8Z9uy6qd6hBZgJxLo7mTKTWowBBvqCmO
 4l5t1ibv1NAAyatpPQEqOGc=
X-Google-Smtp-Source: APXvYqxRjRSPO/J+H5WK/f/tD4obqHr9uk/zzNMYETV1oB/hr82CB+shC60k4aOdcZjrzFAIe9rhfA==
X-Received: by 2002:a17:90a:f498:: with SMTP id
 bx24mr101682492pjb.91.1564179679768; 
 Fri, 26 Jul 2019 15:21:19 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:3044:7ea3:7e19:4d2c?
 ([2601:647:4800:973f:3044:7ea3:7e19:4d2c])
 by smtp.gmail.com with ESMTPSA id k25sm43828641pgt.53.2019.07.26.15.21.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 15:21:18 -0700 (PDT)
Subject: Re: [PATCH v6 00/16] nvmet: add target passthru commands support
To: Logan Gunthorpe <logang@deltatee.com>, Hannes Reinecke <hare@suse.de>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20190725172335.6825-1-logang@deltatee.com>
 <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
 <8fd8813f-f8e1-2139-13bf-b0635a03bc30@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <175fa142-4815-ee48-82a4-18eb411db1ae@grimberg.me>
Date: Fri, 26 Jul 2019 15:21:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8fd8813f-f8e1-2139-13bf-b0635a03bc30@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_152122_115120_5A716B8F 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> How do you handle subsystem naming?
>> If you enable the 'passthru' device, the (nvmet) subsystem (and its
>> name) is already created. Yet the passthru device will have its own
>> internal subsystem naming, so if you're not extra careful you'll end up
>> with a nvmet subsystem which doesn't have any relationship with the
>> passthru subsystem, making addressing etc ... tricky.
>> Any thoughts about that?
> 
> Well I can't say I have a great understanding of how multipath works, but...

Why is this related to multipath?

> I don't think it necessarily makes sense for the target subsynqn and the
> target's device nqn to be the same. It would be weird for a user to want
> to use the same device and a passed through device (through a loop) as
> part of the same subsystem. That being said, it's possible for the user
> to use the subsysnqn from the passed through device for the name of the
> subsys of the target. I tried this and it works except for the fact that
> the device I'm passing through doesn't set id->cmic.

I don't see why should the subsystem nqn should be the same name. Its
just like any other nvmet subsystem, just happens to have a nvme
controller in the backend (which it knows about). No reason to have
the same name IMO.

>> Similarly: how do you propose to handle multipath devices?
>> Any NVMe with several paths will be enabling NVMe multipathing
>> automatically, presenting you with a single multipathed namespace.
>> How will these devices be treated?
> 
> Well passthru works on the controller level not on the namespace level.
> So it can't make use of the multipath handling on the target system.

Why? if nvmet is capable, why shouldn't we support it?

> The one case that I think makes sense to me, but I don't know how if we
> can handle, is if the user had a couple multipath enabled controllers
> with the same subsynqn

That is usually the case, there is no multipathing defined across NVM
subsystems (at least for now).

> and wanted to passthru all of them to another
> system and use multipath on the host with both controllers. This would
> require having multiple target subsystems with the same name which I
> don't think will work too well.

Don't understand why this is the case?

AFAICT, all nvmet needs to do is:
1. override cimc
2. allow allocating multiple controllers to the pt ctrl as long as the
hostnqn match.
3. answer all the ana stuff.

What else is missing?

>> Will the multipathed namespace be used for passthru?
> 
> Nope.
> 
> Honestly, I think the answer is if someone wants to use multipathed
> controllers they should use regular NVMe-of as it doesn't really mesh
> well with the passthru approach.

Maybe I'm missing something, but they should be orthogonal.. I know that
its sort of not real passthru, but we are exposing an nvme device across
a fabric, I think its reasonable to have some adjustments on top.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
