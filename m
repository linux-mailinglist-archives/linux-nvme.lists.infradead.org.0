Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE11A1B89
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Apr 2020 07:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z4Um5bPSiO8OAEaMfcp8CdGYOaxCHKNzqs5Mgidj7HE=; b=VVO4IoLBiy9BNXJb+iAbHiQGx
	qnxIHdcDqfm0Zxq0N99ai/ne1k/lSr+YAjIiygYWRpD9a+y1rYqTxz9icswPx77jcRs7cSRJCLwKH
	BJoKTTCjTERu53t7FZrnms3tN/7ynA0ECRweaRrp5Fp5eWaTa0PS1hs5vZo/UVvi6BcagqPKvmqsZ
	PKg9k/9pMAc738RHpu9hdjDfLZJKVKd8mFJZfshzOjNlxl5lnqKqPJ7ckK6uzHXF83EUOnXGQzw1Y
	BZcUFZyUseQa1280y0H9392HkMOMSvsdZ5ktYFiVg4dMhdNLpqkuNWVKQio6XVRYk0MFqLcCN0doH
	TFfCG68kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM3Ks-0002NE-DL; Wed, 08 Apr 2020 05:33:14 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM3Kn-0002Mk-Ov
 for linux-nvme@lists.infradead.org; Wed, 08 Apr 2020 05:33:11 +0000
Received: by mail-pf1-f195.google.com with SMTP id b8so48149pfp.8
 for <linux-nvme@lists.infradead.org>; Tue, 07 Apr 2020 22:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xoHg40R/noKjsYQY1Mu8rIdjcMc70C+6bS5Bo/67jic=;
 b=tiDHio9A+13Enu1XId6yqxx0y4HIIVvUrfSnBU0qHbQCX4S/V8icrkhXNP3H0wtNzB
 AKCAmU8evVdoR6O1FZVQMZIgB6QmFYYCMPlmScK3hpvbhbod9cgDfXRAihHmPj0p7wtP
 U1LnCEnjimh84nSO/hiUNaeOBWBJ7zmUpwpYc9R94tCaYiN3V+W/pkI7LIwEGiJfhlmt
 m+QpsNhOCFEd4D4/9PTB98WKnZGWKriBwUBVfU6TKREwZjlNopI1cw9kb/BLGLOBVhiY
 vsHwjEjv4YJ/EhphLBzVf5ccQRxxQ8TThXOS1kXNzF3ul180x94bN7KFcLa4pr6l75zu
 nXbA==
X-Gm-Message-State: AGi0PuZfqmxv2tnoLjH1iRnt52SL0KqugFbn3+tZwo9jE55/JxNpPkV6
 Inf/pC5R8vidklZOlbqoVa1tnaky
X-Google-Smtp-Source: APiQypJfNGgV084ft4utB6BT942dFp4qK6m7wcpAxthUXAUTdTlfgC24ouQ2tbtve5HfNMSToQwP/w==
X-Received: by 2002:a62:1b05:: with SMTP id b5mr6095273pfb.281.1586323988872; 
 Tue, 07 Apr 2020 22:33:08 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:8f:36a3:3e4a:9e?
 ([2601:647:4802:9070:8f:36a3:3e4a:9e])
 by smtp.gmail.com with ESMTPSA id a185sm15819902pfa.27.2020.04.07.22.33.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 22:33:08 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] nvmet: add per ns thread to generate AEN
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200408041633.20632-1-chaitanya.kulkarni@wdc.com>
 <20200408041633.20632-3-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5e54afaa-7de5-a89e-5740-88df15c52bba@grimberg.me>
Date: Tue, 7 Apr 2020 22:33:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200408041633.20632-3-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_223309_807724_55BEEA43 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: ailiop@suse.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 4/7/20 9:16 PM, Chaitanya Kulkarni wrote:
> The change of size detection on the target should generate the AEN to
> the host. Right now there is no mechanism that allows us to add
> callbacks for the block and file backend so that we will get the
> notification for change of the size for block device and file backend.
> This patch adds a simple per namespace thread that checks for the size
> change and generates AEN when needed.

kthread? per ns?! I really don't think this is the way to go Chaitanya..

I'd suggest to expose a revalidate configfs attribute and have nvmetcli
install a udev rule that triggers a write to this attribute. Balbir
already got the udev notification for disk resize (see
set_capacity_revalidate_and_notify).

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
