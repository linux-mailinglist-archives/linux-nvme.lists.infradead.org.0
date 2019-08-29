Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C679A2701
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 21:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VGqcTdOIRl7k+1nHB+YA7o49dYX5Ign5OjBAuPM10fM=; b=tFLBavF7jJiy74nl+CKyJ+K6a
	5yHIvFQIsC5bzLLVqU/G3r/NDLYIVXjLSlyaa9Enfq/YtbrY58L88rMOdsVgk7jRpNDChKV2Sxqfk
	AlsT4PpldV8hP4YSI0DUbUeTdxX/YjCqgqtALKQAlNAOc/gFIxzWFR+FxocKiI5+spWnZlJiNV4GC
	xVnVFJ0duc2r6qSoi70N50I0ckNvdEhDtWNp9Nel4ExlkSVohrgXp98n8w18Gz09AS27NlNtCRXcd
	yaXVLKwY9yqv/AOaZZeXix5SudXLIbVAV0dVkyGmcPmGsfwc5W89P+2R1dqVV5SdlgsAAPDCkon2N
	N0c7qtvSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Pmg-0002nC-Sd; Thu, 29 Aug 2019 19:08:38 +0000
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PmY-0002mX-0X
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 19:08:31 +0000
Received: by mail-wr1-f49.google.com with SMTP id j16so4526050wrr.8
 for <linux-nvme@lists.infradead.org>; Thu, 29 Aug 2019 12:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KSwf6YKQuOuNajmGdQ7gKEV71+gjIPpE/B9qE1+kGwM=;
 b=Jr1Vnt9Xu6A+gE846kkCD4qYCvKX9yqj4RKlYQAP1n9AlhqC7yaBiPxd0Hc9lUm2aF
 P2LPXMOL/oRE/+8UKHoBgEilWqSzhV8fjdo4mApn3djErjCFUcj450HXsTaHPXW7o5wi
 +SEteQZn1wymWr4YuShaF+7B/luf5nYhFtOUaSOC3ll5JHuQGEC3AaomNvijWgdEnkmy
 T1FfmgdKKD9nsKMeeMOtUsYOrZAx3AUrCDJ0R6RmTA1M9fyzN7RoU7Alq50AfeHJr7Mc
 c3/CA2GhtQ8PnvZAbNswe2aV/K2SdjBHvAje0O2UbTVMkGR2/OU59sEG+LNuAtjJ4V9t
 anJw==
X-Gm-Message-State: APjAAAULDIQ8TlbCikLPf2nqZMXeXL4tVS0I0T8TrVu8f18uM8/Nru8s
 1EQjapLvXgTfD/bbAOCxpo11bsGa
X-Google-Smtp-Source: APXvYqyieAfS4EM5j+cVR4eblZXexihQrv0QhVXBKLfilzuzP+6s8B8pF8IUe9TIu2GiEcUW14Ao5A==
X-Received: by 2002:a5d:670d:: with SMTP id o13mr13062714wru.289.1567105708347; 
 Thu, 29 Aug 2019 12:08:28 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id x6sm5576134wrt.63.2019.08.29.12.08.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 12:08:27 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli: Make 'list' more useful
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org
References: <20190826224614.22161-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6e5b190a-d442-4851-a87f-785bd1dfbb83@grimberg.me>
Date: Thu, 29 Aug 2019 12:08:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826224614.22161-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_120830_059355_7FE08AFB 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good!

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
