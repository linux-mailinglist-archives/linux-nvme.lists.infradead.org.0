Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D26B55CA
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 20:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cw1IFT5IQDR7Kfxw9KKZE27lWmQcB+74fcChNuVdBJc=; b=X/aku7NVQdsTozm6Qzx08eLUV
	94LRvzR/lqu7AYowHwtuAxQsI5pJyAMq28OSREe2l7CHESJFbXjf/adWWZiq6sW7lNQz59F8kIqm7
	uIYmVaTDrF/waU4FU6iRuMWejvK80VRHQ0GIi3UAnmo4tMPwak2u2OdBnIIzSQuzhjDRgiscnwKIW
	3otd205pG+c8M0O/GfCuykBJjeSONDLprS6IO+flfsZZUp2yUCLvlyPvoKn5SmGX08KnatUl7g8oe
	BpMoArcwTxdGK9dzt34YSJMoIcoS6QKWwM2XjtS6rdLU48dLRjlPcMG9o1eL/adwrJi7nvYLY1j6c
	lqqeknEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIgH-00040Y-1p; Tue, 17 Sep 2019 18:58:29 +0000
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIg3-000409-TV
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 18:58:17 +0000
Received: by mail-pf1-f171.google.com with SMTP id y72so2666839pfb.12
 for <linux-nvme@lists.infradead.org>; Tue, 17 Sep 2019 11:58:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kQc4sh+/ANUB12qotn06cQoVAtOlplPZiL32AJPb/Pw=;
 b=CxTdSamRK7AzA8MloGlMYcZIKJ8f2uId9RqGi43BgcR99N9U6s+ejPNnkdyeyatMem
 ixYTCikpKsvdazHj2dAMEmWDqAhS7gNOdEE8NSgVWSNzI0SxbvWzMtSGVKse2gEPyCzl
 VSxBMOglI8DzTudtl9yQrAqW0rjZjAzfs2Cc91GDr+ijCQqCRR82o3i2/YlHOVQuidAQ
 QW82EsIwFS/n1m4kYw9YxE8NVi+tbpJEu3xHgBsB1ZKuJ7mGQtMk9YMh7C+2nTIvO76t
 QSYZS33Oxjxc2jTowTRCJjPKjtzZPuvXuvPH5805aRq2XwkSsrYAKqopyNfLeg3ZvpaZ
 0yGw==
X-Gm-Message-State: APjAAAVPdP2CKyO7ozHlwqNXZqJKQ3bOeCLhdy8htopyRTeR1XhMEKhb
 mpgvmiqQ7efQKhGcLjC6WlI=
X-Google-Smtp-Source: APXvYqz72Yu59YPq7W6vjnmidIhnIp0rO0KFpA3hRb5nx+RVN4e19DkezpEbwtxg26if5G7V7IeuUA==
X-Received: by 2002:a62:1d12:: with SMTP id d18mr5948695pfd.53.1568746693736; 
 Tue, 17 Sep 2019 11:58:13 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id h4sm1178494pgg.81.2019.09.17.11.58.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 11:58:12 -0700 (PDT)
Subject: Re: [PATCH] nvmet: change ppl to lpp
To: John Pittman <jpittman@redhat.com>, hch@lst.de
References: <20190917185200.24292-1-jpittman@redhat.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <a66f0549-4d58-57ff-8a5c-7e7140614b77@acm.org>
Date: Tue, 17 Sep 2019 11:58:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917185200.24292-1-jpittman@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_115815_951885_6275D3D7 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, bvanassche@asm.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/17/19 11:52 AM, John Pittman wrote:
> In nvmet_bdev_set_limits() the number of logical blocks per
> physical block is calculated, but the opposite is mentioned in
> the associated comment and reflected in the variable name. Correct
> the comment and adjust the variable name to reflect the calculation
> done.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
