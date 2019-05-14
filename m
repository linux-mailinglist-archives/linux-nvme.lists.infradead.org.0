Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC291CBBB
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 17:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzILduBtb7BIzw2Cwsw7GzhOOtKRHzh7ZjJ8olwKWGg=; b=Rk9j6au+/0Z7kO
	gbT107Y8SY8quTL48adB3F5rzKtqurPLxkhEIRGIvtmHrOAxnM8ZVEcAIHJ6cvIzYNsJX/g6h5maZ
	aT0JuRG1ekTF/IJIoOxcCxYu+Vu2zDeIybRLclxVDwGivBPGdpwJYua+pQgKDGCLVHUJREcrUq4j3
	drk4i6rZWbrcnClXDmqv6QX5O4tHt5gLYeJ1MKC1Kz8XsrYUyNaLENhRHbHhAi5P0SV1eZZmzk6Mk
	7n/Ja9Q6SQMf+85j/cMDetCewBuvPCf+UCqqmLfInXSsLVJLYh9EiAOaLiWys+OGjCguNgJbiPz1a
	0W2+c1qjzjNRLqMHpzcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZG6-0000cp-3v; Tue, 14 May 2019 15:22:26 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZG1-0000cS-G4
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 15:22:23 +0000
Received: by mail-ed1-f67.google.com with SMTP id p27so23458735eda.1
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 08:22:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6mzem++oV3shKRC9oW3brvpT+7lLFWQfQ9DEhumyh+Y=;
 b=gQnf5C/JjR4saxcaOoAxDstmF+g/JFj3FjC91zIlc5qD749EXROp6L5LVlhP2yp0ld
 yZARlkqEEeJlohB4mO8+zVG/FmPh7M5W4IBGL/k+B8bnJD3EAfkorkHReH7JRZwQ/5tG
 IgRPyearyIYyu6siYhXPb9XDhCfQWCri/MnEi4EC2wst/zucWtlk7g1NqHFObE6W4rOG
 uvp8vsFbaZVeRKus46bvYGWVMjrNe1ubR/Fcl0OV7x8Z7hrkJPbPVia/UiM8XP6H1oZY
 eppcXVNhinNetbc+vw96rba0pqPmMAVEXHH4ZyxTaRcppMxwo9M3nUB9b67cStwkna5x
 aWTQ==
X-Gm-Message-State: APjAAAWVgIXiSIrp+BQpD0vCpoaGEhkHTBzzsey6kvdoHJvBNBcgtloo
 HASsdxaVVEKwiHY6gQECatU=
X-Google-Smtp-Source: APXvYqzuiTWeLhno6la/KXYc6Cxhsn83Zk0U4tisygf+lSakvQ3OPNdVdciWWHQb1I/6OwK/OOQVLg==
X-Received: by 2002:a50:ed14:: with SMTP id j20mr37525912eds.84.1557847339269; 
 Tue, 14 May 2019 08:22:19 -0700 (PDT)
Received: from [192.168.1.6] (178-117-55-239.access.telenet.be.
 [178.117.55.239])
 by smtp.gmail.com with ESMTPSA id p60sm4609074edp.0.2019.05.14.08.22.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 08:22:18 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli: align comments for struct telemetry_log_page_hdr
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org
References: <1557846878-25595-1-git-send-email-akinobu.mita@gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <70b80155-d4a8-b53e-7022-0f5f704b1338@acm.org>
Date: Tue, 14 May 2019 17:22:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557846878-25595-1-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_082221_536896_07F5929D 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <keith.busch@intel.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/14/19 5:14 PM, Akinobu Mita wrote:
> Align the field member comments for struct telemetry_log_page_hdr.
> This also uses tabs instead of spaces to align field members.

Hi Akinobu,

Have you considered to use the kernel-doc syntax instead of aligning the
comments? See also
https://www.kernel.org/doc/Documentation/kernel-doc-nano-HOWTO.txt.

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
