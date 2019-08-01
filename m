Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC857D28E
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73jE8ijM4g31mbKjR4QWPBBN5xlLRPd+A/AGxJLAuE8=; b=kkN6Q7l0rzWIIivFy4eL3bEjp
	zKcKpo8ZGSd2qz5cAnru8k9OzO2r1O2q9aXKEIRa8kW8XVAVP6PYfg3lqAeQUlvsutILunHRbrSGo
	us1To88q32Cv6UviMk5MddQqc1d8+2EWJ0Jb1ht+IP513zCSxXj8fLiwW2WvD7ieapBERuCZDkf/X
	KAkQgdt95ODu9uRDQ39pnyM0k5Dt796j3M1W+5dnDHx4SmaFysdBR8S0zCGsPaIlhkGPglvnotS1m
	RGibv2TLOfJodv6k7zLdcevh2yUYAHYzXJTV6feufScH1+LVDN/DuVDSd8GWccia/tJMu5DPmwAOx
	HXZIJQyZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszXf-0003mp-Tr; Thu, 01 Aug 2019 01:06:03 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszXb-0003mS-4Q
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:06:00 +0000
Received: by mail-pf1-f193.google.com with SMTP id g2so32868204pfq.0
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:05:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MkhdVhB5byqRAHcmJWjX16emMAb8oLB06akoIMklk+w=;
 b=hIo5QPPr+JXQD8/MecqLCtkgdJd1W3mORFRiIK7oFDgyOghj/Pis7Ok7VBbW1S+1+9
 aEKVMvoyaQVaYbjnjb2LMSVivPungXXCfn/uvot/jCzmtoXms973WteEOV5P8sWs6AEY
 xKWJbVs72m2vUFOl8zAqG+llDutS2JQy7j6QaKDbFeqycbAQcBW7gJ29LQZWCIctG/oN
 1fUeTz+pY2McH4jT7qAbleNAG4FIiCZaxhBpaxgtD395JR6aw72U6cfIY9aPRNkit73G
 p+HRfKcWBoR7RUKq0P6iOOqPXglV2SaHyOqbNtw/0e712IS/kQ9qMLroE6INi6sMXTBh
 cClg==
X-Gm-Message-State: APjAAAUin3heL1yM8oNe6bY/rKBnchMyqZoDYQPSBneISM8KaE5+GJx3
 sh3NwxdRCadR74Y8oBkV2gE=
X-Google-Smtp-Source: APXvYqx4BywATFA1avF2Jxx+YK0+FH8Bif9JqaC09ggBssk52MHDDUzAG05DBTW+EYMlxrQD7izyoQ==
X-Received: by 2002:a62:770e:: with SMTP id s14mr48636319pfc.150.1564621557964; 
 Wed, 31 Jul 2019 18:05:57 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id k25sm58083841pgt.53.2019.07.31.18.05.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:05:57 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: Fix async probe remove race
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190729223452.12967-1-keith.busch@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ce8c9398-d60e-974b-d646-9862a0f1833a@grimberg.me>
Date: Wed, 31 Jul 2019 18:05:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729223452.12967-1-keith.busch@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_180559_169934_B291EB72 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, lizhongfs@gmail.com,
 Minwoo Im <minwoo.im.dev@gmail.com>, Bart Van Assche <bvanassche@acm.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

applied to nvme-5.3-rc

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
