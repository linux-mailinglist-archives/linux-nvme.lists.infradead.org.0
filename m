Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E2219FAF8
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Apr 2020 19:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=DbxjhTrxGHIoV3CLfp/y0Lamb
	CfrNbJg3QjZcQg3FGQBOfoFEZNM727NCQJ4/9Aq4cTSnA83sPV4BpVaP11NuRWE9hcIdSBEFL087U
	QjwG5Xe4OTG375l9FftA81HpqYlwq4d3LzXPpME0SN6Cb7MKPo1MmTCOlV0onuygAhSDMVoQhuJaz
	n2ReqYkJNZcNfMxzE+xJW/4HCitiAA3pbTheaBGpIMuwffjUF/mQmnzO1k+DaWcig1Nkdf7i1oSrI
	vKjpv7t3OMPABeiSLRXlAFXSGfo40I4p7jDO6dkD558mT+Tn7syqQBppdHq+lwOB25W5Gj3f5ils0
	tM8wbvfpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVB3-0006PI-WC; Mon, 06 Apr 2020 17:04:50 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVAy-0006Oe-PO
 for linux-nvme@lists.infradead.org; Mon, 06 Apr 2020 17:04:45 +0000
Received: by mail-pl1-f194.google.com with SMTP id t4so21809plq.12
 for <linux-nvme@lists.infradead.org>; Mon, 06 Apr 2020 10:04:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Qw6NUvjmSe4YgyjHgaRd5M38ryfvV3vbg6RH6++OvE3/qBxnNh9eERV8cerUk3y0m3
 J6JPVBLCGiAbY1RHTTPZHYvXSvLWt7pAZcw2SNKc3/J8mlAnSswJNRvsG3uNXd0vn32M
 RQhP8n+Qg3GQTX3PGbOtUYSKL9Ltm7m4ZEAAaH2CAW6ZHwq7Pe1Sk3DjYoRjtFChijuX
 NQeee7TEH81k4qkQS5ZlgmoKlYtGJTe+nvWgBBAg1UGJT2vZo7GbBQJmhdanolVMMV5b
 0eLrE5NJFDAW5MmbKrD0U0xhqK4ErNWOQBPwFlMOjcx/sz4RuVVdObxaZ0AE83CFoRhC
 hmCg==
X-Gm-Message-State: AGi0PuavNn4sf/NtFkZIlUW3PPSnSg/ZQ2w1r4LZyiAwA+b/WZ3B4hLw
 S3pQqNH4Vw43XlD/kRd5c9yV18aN
X-Google-Smtp-Source: APiQypJDbH3eMyhU4Wj9uCvUoVvGUVjt/TkVRqYSeoEJX7GuFATqgEEm9uj0WrPSrypWmqHvRJ2MGg==
X-Received: by 2002:a17:90a:cc10:: with SMTP id
 b16mr148126pju.29.1586192683091; 
 Mon, 06 Apr 2020 10:04:43 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:e891:e4b7:ccee:cfaa?
 ([2601:647:4802:9070:e891:e4b7:ccee:cfaa])
 by smtp.gmail.com with ESMTPSA id w127sm11988500pfw.218.2020.04.06.10.04.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 10:04:42 -0700 (PDT)
Subject: Re: [PATCH 3/5] nvme: factor out a nvme_ns_remove_by_nsid helper
To: Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>
References: <20200406121352.1151026-1-hch@lst.de>
 <20200406121352.1151026-4-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0f3baa34-ec67-8632-e331-1c470221343a@grimberg.me>
Date: Mon, 6 Apr 2020 10:04:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406121352.1151026-4-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_100444_817780_A2BA19B3 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
