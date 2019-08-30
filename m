Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D586FA3E26
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 21:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3dBPWstY0ExaUv+999SMmuFebdtbZthysYaw2o7rGwg=; b=Ngx8/hRAkCBnL0R/GytSoa7Kq
	elw8TKOtOYLKb5zNlfGVsBRGN5xVnl1ReTjWi5YwrAzsD1badbLcr/F8/2DFWnIIP7qWNZRDze5hn
	u63xFjFXQEkMWORdAWIsyRc5+aV1FSLx1YaX4pKAi0ihbRRHkeJuoD4oE6POwRHu78ULN92V29H+1
	VeNdtsRaBEV4b+/s/PzcQONo5N2u+p3YPnHhExG8tB+u1v0UWnYI3JUBYfkqcnRTBAje40SPkOFej
	TP/Ok9szgizaqlVQ81BQdzoMMa8jUl4PNAdxm3pDmohCnBYNMnT8mZG8nLa6IE7Bu1Eh/bk5CJtWW
	u/cird1yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3mGf-00063H-7m; Fri, 30 Aug 2019 19:09:05 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3mGX-00062w-Kd
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 19:08:59 +0000
Received: by mail-oi1-f196.google.com with SMTP id g128so6193801oib.1
 for <linux-nvme@lists.infradead.org>; Fri, 30 Aug 2019 12:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GsXyhhkizv3RxiAfkmA/1hMxG0tN4BYthFzukrbdX4I=;
 b=dB6rGtDUww4aRJIkNDEBYHWA6+60IC5pKBpd9BVayuguxPSWiYJp5UgZ2VIkE49hpr
 ajZA939qdYsC2igvxgoVk/CC1ZUH9t9M1qdmg5siifSYd7QCDt/81AOu1ssnxVQxu/Mn
 yTrLuqcDXsAnOIxElfV966DHagslTMI5r+Xqvzh4Sxr2reXd7KJjTRq/f/ZICtOKxOdz
 zq5zACFYB4mzNFqPCY0fIgrq3j+4wo1PyKwOpyrD4CqvSPTrMXb56XyZTHdCIFjn/eIr
 ZTxehE+yoUBK4Gz7wPt9ki153Gve1FciJhgeF9+Un1rfhmfXW2eR916KGBt4kBKcF327
 rL2Q==
X-Gm-Message-State: APjAAAWmx81YGSiboDfs5lskWWD44h69aTRzpqTQQsFfJz1Q42oFxsey
 LVYrdnHt40mgicmm7kVj8A4=
X-Google-Smtp-Source: APXvYqyUEgpjtji9QBFKDT0dPRCDccwAfYTys1H3KYDLWcvh/ArSL6tPUau1v8L96oOp/dG4nBMFGw==
X-Received: by 2002:aca:c50a:: with SMTP id v10mr6108817oif.174.1567192136564; 
 Fri, 30 Aug 2019 12:08:56 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id u141sm540872oie.40.2019.08.30.12.08.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 12:08:55 -0700 (PDT)
Subject: Re: [PATCH v9 7/9] nvme: pass status to nvme_error_status
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190829220645.5480-1-sagi@grimberg.me>
 <20190829220645.5480-8-sagi@grimberg.me>
 <BYAPR04MB5749778152EA94ED92EA2EC286BD0@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a61fadf6-abef-b71c-d3f1-e38bb80e1790@grimberg.me>
Date: Fri, 30 Aug 2019 12:08:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5749778152EA94ED92EA2EC286BD0@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_120857_679097_0C1BE15B 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Do you find any issue with passing request structure ? or it is
> more of a normal cleanup ?

Its used later on...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
