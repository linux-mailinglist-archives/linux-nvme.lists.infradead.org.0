Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF127AACB5
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wC5Xr0IFz24cBsCC8kjkjvQEs8Fcf9x0wkmQTEVlfx0=; b=LGkYCOjmFn5RmlIUaTNgrRD6I
	FZcLqdGHzzEdI9GKsQ3mnHZN27ruoZFZ7rEfIb8jp/hKtcdHUfEMERMc3h8/4Y1gulVdI7QXsyHxh
	LehK+08OBHBcMJYoXtqvRO+e9tfHnuEHWJBfDS+GdrHCEHZAHaeAlroKeMiewxQb5EmBexHMgkizC
	RY023Ik9siV5KD0OiSsiLbPzeceqPgdNVPu1gzLlCtzhBrcVinfuscbGIRjQ/HigaiIJhQGBI4+MF
	2Atxl01+GyJPScHI/GCRQSCgbQsuichc8UaKLoVP9J1ynlecxHcvNwpkALilRcBg71mIgFAFOIyrO
	0/62oM5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5y0u-00032Q-Nz; Thu, 05 Sep 2019 20:05:52 +0000
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5y0q-000322-1Y
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:05:49 +0000
Received: by mail-wm1-f49.google.com with SMTP id q19so4149619wmc.3
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:05:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u7j6bRp6tgNAxHJKMuhoBeblo7uaqvEtq73jUP1ye78=;
 b=iA0wtMcLkMYqmHsN6wO9/QSJ31k3snzUIcy2SHMEoB4Nrki76CFYjnXoqA+aq0Lq3Q
 KARW3Zt+74/rE5jOJ/hPg0rt5eB++b4xiu2/ISz6nB517oazNPxTKGHtMawITsiGBhlr
 EEgzMNbUNkEod0tLgeiO0GbNWcl/E4SGkEHbavz+Aci/UbVeOtp6F7jPm1gGYWf89uBV
 402Er1436nwvXC8HZmASaITuUQDNTOF2+JkAGGBc0NXkIsi0mc8QfLlyLDu3KYkyDOcA
 FeEcLasqP+EvWs1n7xyUh/6qUB1NxAuUjDCYi4yErawIMy/uPQKHLdAnz+1lm7qTH7pg
 Mk/Q==
X-Gm-Message-State: APjAAAUTVMPSMAE8Xj41WdnsnxlXWIyv3aGOQ2IYsviMlEN4hIC/kRgQ
 0vvsMFvkeg2Enkn+0p6ZO/s=
X-Google-Smtp-Source: APXvYqwl4RwjiRyawN+y0OPGL+qW2tlPnNBWfsrd8ZA6SuH6V0ry+V4h28ZET6fPiFdUc1gXT1PMbw==
X-Received: by 2002:a05:600c:24cb:: with SMTP id
 11mr4269994wmu.94.1567713946456; 
 Thu, 05 Sep 2019 13:05:46 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m62sm5168268wmm.35.2019.09.05.13.05.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:05:45 -0700 (PDT)
Subject: Re: [PATCHv2] nvme: Assign subsy instance from first ctrl
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190905163354.25139-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b47de61c-c61e-359b-416e-28d8db0813f8@grimberg.me>
Date: Thu, 5 Sep 2019 13:05:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905163354.25139-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_130548_088147_4C28B256 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
