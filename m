Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C12346D08
	for <lists+linux-nvme@lfdr.de>; Sat, 15 Jun 2019 01:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ivCFrOsn9LHZhnInP0QK12zMTV9p3m5MxD6HXxgudaE=; b=qghWjlN45QkUe6FlSsj+ivB88
	JTPO7r881BC5FealUgOJhYmYxDfgmLA0vjF2QG681CTfvCSg7ze7HqfPsHKVRXjoHo6fCar+NQjgb
	Emj0/xm6Qo6srkz+5f/ZLi0gJJFrtgB5bBWEJsSlU36PXHUYWwcxdXP5nCLK+fvBePMHz0mRPjEYx
	aQiILWQALXDw9ZpOSyLIy3gCI6e7BLixjhzbUbBHUH624BitPZzgZelA/Ly2LPMlmnaqdMeWxUanB
	vvXdL3WDdKxKsTFQ0TNbhxmNMM0agPkGTTdE97YpMyfFDDrdbM0CiczNtwzT2aoHPk32dEc95FGIk
	59gnVxetg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbw3i-0003Z9-HZ; Fri, 14 Jun 2019 23:56:38 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbw3c-0003Yi-Et
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 23:56:35 +0000
Received: by mail-pl1-f193.google.com with SMTP id f97so1624383plb.5
 for <linux-nvme@lists.infradead.org>; Fri, 14 Jun 2019 16:56:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SyC4VhOyLENetI2IzzLpo0nuswMsw8kxd/uBSl0vFhY=;
 b=ISd6MuODXWxqHUsmXRcDPktmUswB9gAXrNI5vZLRwyxHP4bEq1j4IcscSqf5MzDfZF
 2wdA0NO97r34cpDJyJcznc1E8QAjaj5UWRE1FzUhpJj9Mkg664JV151tJqJ27PS7cA44
 wlYjxoDA31vxYQnhIGSKWtVXYT4hJeK4WCbSIIi4HMlzMkD5LmL7OCIpoj/hbo194uBP
 P+63c6Ya3Fb9EkkkY/yOK1BYqsB4nedXD4b7NSaPHjDRuCUYbWtO6B82rUNPSu7fXAA5
 s5+SIephnn7ivoEu9VhzrmV1G5UMilrap2MowxCCQEDRMUvA18HALHBrsNaZvRtghBrV
 oO3Q==
X-Gm-Message-State: APjAAAUUppzlfWzU0sl0Xnq5xex0uh2ld6Dp0zG1o8oyDLurUUAiPANG
 7NbPTCqDoe7dby5qUqtmCGc=
X-Google-Smtp-Source: APXvYqxD5RPROGWq7arU1Ic7eeDLPjhUvIxG8LWc2iGz1YyaDooAUSM6tPdQZBqV08of5wxEx7qhKA==
X-Received: by 2002:a17:902:1566:: with SMTP id
 b35mr98022813plh.147.1560556591344; 
 Fri, 14 Jun 2019 16:56:31 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y185sm3975511pfy.110.2019.06.14.16.56.29
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 16:56:30 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-3-bvanassche@acm.org>
 <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <4a104091-5ef2-ee3b-9653-cbb816b39a2e@acm.org>
 <BYAPR04MB57499B4C1225252183F01ADC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <d69d61df-c03e-e0db-e9dd-fd367e5a0958@acm.org>
Date: Fri, 14 Jun 2019 16:56:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB57499B4C1225252183F01ADC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_165633_181931_990B4E8B 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/14/19 10:18 AM, Chaitanya Kulkarni wrote:
> Sorry for not being clear, what I meant is uintXXX_t vs uXX. e.g.
> instead of uint16_t ->u16, uint32_t ->u32. My comment refereed to the
> consistency of the data type and not changing the size of the variable.

Hi Chaitanya,

I think the rule is that uint32_t etc. must be used in uapi header 
files. I'm not sure whether there is a strict rule for other kernel code 
than uapi header files. But since the NVMe code uses u32 etc., I will 
make this patch consistent with the rest of the NVMe code.

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
