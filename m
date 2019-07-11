Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D406765F0D
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 19:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=SPdseUuWmWmQtltOKo4yQ5966
	unAOlX6+Rb0AYDld8AU7+2+GDVoWen3OxfIiMbEFPo+COYPpSxdg6adaa6w6k07z7sncj+StvanxE
	Jtc428dRFe2OepZXrOfjfbRiM1phRGpmgMi3vXqjrnuZNhtGLBhHMVEtv/3p1829DXZnLukOqF0Ov
	d4WjpQuokld80vff9m0BRGSDyUi7jb/XYlF7EvkUNlhRZbCxOGUEa1wB34wqeBS78bqnMsaV0627h
	KPjWqAda736MRDGUuBnOaR6R25GytZYjX+OIS3mSi+HuxkMnefnlqHH6t0jID2ozf8mmfWQks8Cgs
	ng43MRXRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hldGH-0006Ya-A1; Thu, 11 Jul 2019 17:53:41 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hldG5-0006YD-Gf
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 17:53:30 +0000
Received: by mail-pl1-f193.google.com with SMTP id b3so3411466plr.4
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 10:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=MwY0G4oDwDouPfEdgpE9UXjY+AQbeD8jOFosC8xv42xdT72XlMLU6qap6IZuE5qaxY
 gMEZfTfvIHVTXUTV8VTrMKLdMRNrNMwoem82FPgr0rRcWYPJL6rx51LjOiLL7tZErYp0
 eMUxKxiqVu3eBsQBR8pjnqyRMoRVXe/X2x1tNU9DDtYLmdHXsyXFXgCIp2vm7+J+ZMa8
 QC+a8Cpi+ipf6JFPyGpsGbe8mTzBSm5+wJjHdRC5sTtrQgDjFLQesIBCwTpnf9C7qi7t
 i7mD8u9K+QUlNXy71iTLFn+9yLztmprp6n/ZL/zpkUrghffbKJLkWag+waY8o9VlhboY
 Kufg==
X-Gm-Message-State: APjAAAWU5/YJkTa1f1AzVAkM1C6NuVcFWG8x4et8YviedI43QyzbLgzQ
 Oj75ffEVp5ePueKWTSWZVgc=
X-Google-Smtp-Source: APXvYqyVUE55R1tuzOMOsHuAESeg4zD23txD2eeIXr1oKGkuzXuX4MxbGWfQ6PS9zQVm8w3lxNWNAQ==
X-Received: by 2002:a17:902:6b81:: with SMTP id
 p1mr3527513plk.91.1562867608428; 
 Thu, 11 Jul 2019 10:53:28 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id c69sm8217326pje.6.2019.07.11.10.53.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 10:53:27 -0700 (PDT)
Subject: Re: [PATCH] nvme: fix NULL deref for fabrics options
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190711170447.20836-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <58b3660f-fbc3-1477-3d9b-14809a7c24ea@grimberg.me>
Date: Thu, 11 Jul 2019 10:53:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711170447.20836-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_105329_559054_345ABB10 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
