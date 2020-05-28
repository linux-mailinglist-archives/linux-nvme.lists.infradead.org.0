Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D53B1E6F1D
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 00:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IHbz5TsTvJ24+NreIoD2kdPVlU1/5C9bS81twgn8APU=; b=IzQTl2KC1iaFiWh0XqD1YoYpY
	uK7krLq53PO6ZQrn+cK38by1Dj1QZyZhfB4OfYYK74Ytqx+qSd5sxrcmTSmNBFX8FcmVeH6WBsVdl
	aGkee763NXkSacZ3d1D/h5wz/UIMDkhcH+zz4Igi6YyjytUp2HcCRocw/C82NFQWgonUDVH8PT/HL
	xsTNZcfrJ8Sf5HzDzsNfN/wEjaPk2w7kIyTqj/uzugf7OvTFI6XPhUQP3ZUI6aytTrt66n++NarsW
	rOqS8gTQp4jW1byEjlLCmT8kVc+mDA6AKz7qa+W79th+bCfAYRTSUg9EBLCfBIxvIqAEsztHd7EyN
	jSb8RkXtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeR5s-0003oX-VO; Thu, 28 May 2020 22:33:44 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeR5o-0003nw-B0
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 22:33:41 +0000
Received: by mail-wm1-f65.google.com with SMTP id v19so922983wmj.0
 for <linux-nvme@lists.infradead.org>; Thu, 28 May 2020 15:33:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+KhrMhcJSvItbb/04gtqwcqQ9SN2qd7j6u0HCMyKS6E=;
 b=eeILfNoUxZl+aQQUOR7DOc+ZutDm8CI2K1rwnpCV7E4N3tmSoWNhmPk1llKZL/NxCm
 EgyL2KQwMmaTu9LH0f8zrcYJievgpRm6HR3HdmL67YspMY8yv4gnl4XVrLXQx7x86PJR
 SK2Nyhm8/NqbGEDeU63Oh8USAboxD0X3x/MOJ2/M5tvoTrcvCRDNzb7NtJcX3hIgpryw
 SJPhxZUaCz+UTl396Q7fS4PSERJyrgSbRDyOok+bgQTQUwYJCZeURpfeQBXgoFCYRfb0
 aexhdh0CFnWcvIbyzuWAY86ZbRgibbXD4xQWoWd4EFk8zeSdkDQSyaDpsby3kFT9ltLs
 MrJA==
X-Gm-Message-State: AOAM533bOdzd7sKfXcsZxWSeq7Uh/eKzQqcRqh99XYbiPDxyBxeTvJM+
 4lDHJhx05Rah80J4UwTb/6dSBHdMm0U=
X-Google-Smtp-Source: ABdhPJwEZfDHlpwsy1mFCARRbXVqxrK1dKlDKEk1jt7eqpK6Gomcr69D17z694cOBBjiGDDhrGFDNw==
X-Received: by 2002:a1c:6042:: with SMTP id u63mr5364820wmb.65.1590705217487; 
 Thu, 28 May 2020 15:33:37 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5097:90c2:ff61:dbed?
 ([2601:647:4802:9070:5097:90c2:ff61:dbed])
 by smtp.gmail.com with ESMTPSA id s2sm7522941wmh.11.2020.05.28.15.33.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 15:33:36 -0700 (PDT)
Subject: Re: [PATCH] nvme-tcp: constify static struct blk_mq_ops
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
References: <20200528222507.390172-1-rikard.falkeborn@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cf61893f-7af0-c253-a3e0-f507e5ae608b@grimberg.me>
Date: Thu, 28 May 2020 15:33:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200528222507.390172-1-rikard.falkeborn@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_153340_377363_56BE9B3D 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Acked-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
