Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DC315B185
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 21:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YO8934icfIOABGNn2Sm6225XGPbcLMJ5wBPukMsD9dE=; b=h5qSYiZqaiQvw2Wucx/BzLmCj
	eRHBaSPy0qQFjO80rhBl5EUxbtsY7wi+wRVuodsSwWEG7cXs94QvI6kPUv20/zn9S399g0BUVsGR9
	uxXge3a/PrYBTAq5ExL9Zg6yX4twQiJ8x8bR6pbyIBIv/38GzcNxLzhFY7XWrOZdEDDT3pXO94lYz
	6ALC4w/pTyprM7V3Qipsml5ejIBcIzTZ/Fvvcz5KNnFCX5V2o4vHLdIpgaRAkrk4gOJRWjrb3aiZL
	zX//WZLWa/0wQ9hWrgu7iBFaLGztzB1ZO+xJYapZx5A4MRfH52ox7COGOhGx3d4mV26+NqhUHSkSM
	j8Y7CrInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yDo-00082P-M7; Wed, 12 Feb 2020 20:02:56 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yDj-00081H-DD
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 20:02:52 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so3182189otp.12
 for <linux-nvme@lists.infradead.org>; Wed, 12 Feb 2020 12:02:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=++ZInzFA2bdLrqcyTpH+6l7uRTXqmKmqabvF6OvJ0Fw=;
 b=VMh+UtYCBX1wnfY2/xabP0nybo6Y8Qpz1eMwdl/zLMWSbkM2Uo/2K+6h4d/Y3aP/2V
 wUTomtR779lW6lo+kZEnYPkT5ziGIUVHYEjFPPUcLXSIgKLt40dHsNkb4gHUwsqs2nFU
 EmTB0lRXR5H2YGMk2zEbBcV+p88PZ7Ny1CV6+H1U1wu2fWJ1HVmR0kYsxWs53sMEcjF4
 qX4gCBYKZGzRPnRRE5wzfW9z2xC7n1bGJLGs+mt0SvZStmTGcZWzTBUFQNv+C1olGGR4
 7+giBpmU5ji8b23j7AB5UnIfp7Fs4N9RxmRVjxY+wNe4RaY/dvdB8PkJfnS48/wPiyim
 37MA==
X-Gm-Message-State: APjAAAU8RAUrlwIoOmQzzrFEX7d9ZwTsbFV8zErnHQ+iHMb93vZtu9C6
 FxvyFDbWoMQK2zHDCERaJQuwVW4J
X-Google-Smtp-Source: APXvYqxK5epq4dnzapxA3rzKIyqrzoj1EkwqNVfSjagfBTttu7fLjKHwAo4BD0voLx7bPxxQmf73eA==
X-Received: by 2002:a9d:6f85:: with SMTP id h5mr10627011otq.19.1581537769596; 
 Wed, 12 Feb 2020 12:02:49 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s83sm418659oif.33.2020.02.12.12.02.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 12:02:48 -0800 (PST)
Subject: Re: [PATCH 0/2] nvme-tcp: Set SO_PRIORITY for all sockets
To: Keith Busch <kbusch@kernel.org>
References: <BYAPR11MB2712E7D933721CA54EB18365E5360@BYAPR11MB2712.namprd11.prod.outlook.com>
 <675e24bb-8a91-6612-887a-2a0a38a57cda@grimberg.me>
 <a82b08e9-75bd-e14b-7d30-7414df1c90c4@grimberg.me>
 <20200131004818.GC8673@redsun51.ssa.fujisawa.hgst.com>
 <20200211203121.GC19458@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <458b2e6a-63af-8fb8-95b3-94083ca09567@grimberg.me>
Date: Wed, 12 Feb 2020 12:02:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200211203121.GC19458@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_120251_442672_1E3FE757 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Keith,
>>>
>>> Unless there is any other feedback, I suggest we queue it for
>>> 5.6 perhaps?
>>
>> Sounds good, queued up for-5.6.
> 
> Sorry all, I did this a little to late for the 5.6 merge window. I've
> started a 5.7 branch and collecting patches there.

That is fine.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
