Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5288594FD1
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 23:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o0nd1lvRZaY8sd5ofe+WpzHdu0WUQtRpDoNopWI3E4E=; b=VhpRYGhf5boLk51efwXskfQ4U
	sce7bTJRajARAVGeadFsq6mgnG6vYU/QzdHHMMW1rk6eScAk3HvXCedJBhydFrcRzOLsAjVR5/O99
	b2X+sbtKu2OIhp+MM5wq6IvLA8nd3SYEToX/mngNGi236BljUiPIPJxd51PdVGUzG95DL5e/i2Rii
	vMxbFZ7q3Lvvr2k+pQTn1NftF4KVtSQfRjfaXFLDyKaGRpnpow6Obl8u7sdwxTkO4M+quXADvxXxW
	gC7UTsudj/elWNKpKjNfJFpryazTrNPhIDdLdW6AMObtcHx99tp/eAu4RVAYgpVG75Q3BUpv/+61Z
	BCeSlMWhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzp7S-0007Ob-CL; Mon, 19 Aug 2019 21:23:14 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzp7J-0007OC-So
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 21:23:07 +0000
Received: by mail-ot1-f47.google.com with SMTP id b1so3059451otp.6
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 14:23:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mhcxS9SHhvc2vuS8TVLaSTM7jzu2HtphXaxiYUBsdyg=;
 b=IDys4NhzygnIAxm/z5478TCmVGqdBE5looBV8eEobI07REdsyASAdNL9fFvdtCtgWh
 xdUOPuLVdWxp+oWzSxXakJNV7x5QkB0NaI8X/clNEdzGBDGtvLevHT1up6cI9YXR3Nuo
 LMaGy3mo2l2e8Jni+7+CquUrH6pizcN3U+8MJtwOXuw3CRonLWEleNBZXkQWoi4AEpZo
 jN1WgouGGm2jXflQmblnmrl1q98k1qZy7y9p549XSYThv2KgymlBUAJ6VOfnIYnC10pj
 oydglYPNv5iBBk5XfpV4JaMj40QMPOlmO8lGlTG4mayVVW9uWdv7SXDW2w6ItlyqGO9O
 onMA==
X-Gm-Message-State: APjAAAVyA9giN36Y1MBXjgqrqoy+DuXQN289dRWCkhqC4efSF4MnSNQg
 Cobut8Qdz9yaIGX5SpieNMA=
X-Google-Smtp-Source: APXvYqzBKAayT/AnSwfPcGrUj38b/YdUfoh8g9XVswN8WmxHkMDL8mxXrwAPr87NNqXWxAjsYdzcwA==
X-Received: by 2002:a9d:741a:: with SMTP id n26mr10656928otk.198.1566249784877; 
 Mon, 19 Aug 2019 14:23:04 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q24sm5911029otl.31.2019.08.19.14.23.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 14:23:04 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
To: Jens Axboe <axboe@kernel.dk>,
 Mario Limonciello <mario.limonciello@dell.com>,
 Keith Busch <kbusch@kernel.org>
References: <1565986579-10466-1-git-send-email-mario.limonciello@dell.com>
 <b4456ee7-6f5d-5968-2167-9900f049e5c6@grimberg.me>
 <3d01da80-be78-5ca6-6ef2-c0e44840118f@kernel.dk>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <064c6b07-be80-1147-5a16-9a455db988fe@grimberg.me>
Date: Mon, 19 Aug 2019 14:23:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3d01da80-be78-5ca6-6ef2-c0e44840118f@kernel.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_142305_927252_3082ADAC 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
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
Cc: Crag Wang <Crag.Wang@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Ryan Hong <Ryan.Hong@Dell.com>, Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Jens, can you please rebase for-linus so we have the needed dependency:
>> 4eaefe8c621c6195c91044396ed8060c179f7aae
> 
> I just did as part of adding a new patch, being pushed out shortly.

Thanks

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
