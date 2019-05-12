Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE4D1ACB6
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7p6GUPyB32t5JC15zW62p6pAwnR/f7Py8gAPG03IaHQ=; b=VeanK1vXXa1PhD9mTCWEUF2Qh
	LjKcQifSQ3pepqJgFS3i0UExK4IV6uukdTdtks3ZZ7W07RpHZ/wOoLbp4Y46IUUHfadoA3vXWJrnp
	NPmUD53DMQEw3wb5ptAbhP7M6ouVNFj2o1LMWIBTwIpAecMkXua4ChkxnWPU55W7NVsase1VPNhjG
	DJijrptk08YUTQ6bRU/Fdz19t872Lv/rcXsSsjw3YbOAf9TmbtpwwHJatzXdKjwvCT3MdTbVASbps
	/UEGmONiJvFT9jpb4E1mYM2pDq3XCrYhwUeoQ9pceS48gFUTtSYwKqqv9dsYjixLAaxO4iyD1oiFe
	zEUIWeJWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpzZ-0005DR-50; Sun, 12 May 2019 15:02:21 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpzT-0005D8-Sx
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:02:17 +0000
Received: by mail-wm1-f65.google.com with SMTP id j187so11365566wmj.1
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Urw4TtR9ZdLg1LBkMwIAbiXvwveS9CAAYAIUnE6nOvQ=;
 b=B+hNuVA9F+3PYPmB5BRFyVgbOM2sNesBFG+osWDTHh8F7x0zWRUEwMVmv0I/oDtUfb
 gd0guGcwmN1L0eMKAETnNsLcyp4JxSHLoOKWZxLqN1BkW/hvhoegxGh879Y2OBHB+xH7
 Gp2tM7+KtNt87Kj/qwxCcpzV207VsgDzNEqloRwnFF2coIprQ7i5VeyEgItlHoDKdPUQ
 yAGN96WT/JXebbLg/vksl4dn6AfHlDsjPe2DAzRXFUDHRmzyn1/7QAiR+iOXRml3DwkO
 3kIJirLABVLD9nk80Gw5f2Xbyc0BkKYwAk6S9CbjGqOKmxEq3lFGAwarxfn4jqLQ68Uk
 IXag==
X-Gm-Message-State: APjAAAW+vwPFm/hfr4tmh99i4e+6qbw5jEmzuH1Dm0XQCKlncn8s2RyN
 ALd6LOajEXPEMWjEsEjCamqkiQKT
X-Google-Smtp-Source: APXvYqwnTb8GfTGdaftUhJPM924rB63aUhd3XH0ZH5Uep0DlAGo7HyBBX6CuMgnjaHpopFmHwlf3YQ==
X-Received: by 2002:a1c:e916:: with SMTP id q22mr12973662wmc.148.1557673333972; 
 Sun, 12 May 2019 08:02:13 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id n1sm8907130wmc.19.2019.05.12.08.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:02:13 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: Hannes Reinecke <hare@suse.de>, James Smart <james.smart@broadcom.com>,
 James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
 <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1d20139f-e451-0597-a7b1-5f4afedc38fe@grimberg.me>
Date: Sun, 12 May 2019 08:02:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_080215_931564_BDE8E979 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> My concern here is that it'll be quite hard to use the --device argument
> from within the udev event; the event itself doesn't specify the device,
> making it really hard to use them in the first place.
> Precisely due to the race issues you mentioned.
> 
> But now it becomes a be quirky; we need to have the persistent 
> connection to get the AENs (ie we do have a device node), but we cannot 
> use them from the uevent, and have to create a new one.
> 
> So this is my issue here: _if_ we have a persistent connection which 
> generates AENs, we should be using the very same connection to get the 
> discovery information in the connect-all call.
> 
> Which means we probably have to update the discovery AEN uevents to 
> include a device name; then the uevent will carry the information, and 
> the presence of the device in the uevent will tell us whether to use the 
> persistent connection or not.

thats fine...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
