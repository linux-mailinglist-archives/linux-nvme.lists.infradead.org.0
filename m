Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3C7FD1A6
	for <lists+linux-nvme@lfdr.de>; Fri, 15 Nov 2019 00:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GnWuvH3/REJfq8Tas9GXD3RsQ2Dw2AcLvcB8fogD9Tc=; b=rbLlLB2AARX4oP3oqvxONP2Vl
	hnzzsLTLnhKJ8Z19vrCB4zzYzixXCHgyQUbEC2dOcGN7rK+HcFQV4y9w42rKUJ4jX8m4+QE/oQWcj
	gUIWGFpizJXpl7ugWUn+azyr9QanpOST6AGCyJRsjrm0ghhtpTmuyREuFS3qbNqMe/4iVCBinhkEY
	AliioPypwe9CXnRreDasByFMeFN5xSfq4/T+OtXEXTbI4eCd0mjeg9GJMbQTQA4D1H5ycT43ZLQ+g
	mJvmBJWMaZyNG7ZjfZS8s14JtF/ujxVX67mlTAQlN+KkmFF8YLUo+rwFeyn2VgvpRsbDv0NO4q0ml
	5CsD6y/Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVOnt-0004gp-0i; Thu, 14 Nov 2019 23:45:33 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVOnp-0004gU-60
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 23:45:30 +0000
Received: by mail-wr1-f68.google.com with SMTP id n1so8867384wra.10
 for <linux-nvme@lists.infradead.org>; Thu, 14 Nov 2019 15:45:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CXkGeIOY1kqf9/zkH85iSX1OSbeXQ3o4oZMY4xxhB4g=;
 b=ISBGBqUKKWN2LX7AuGGClgA6ODdeU+iF00pFtT53AtBr4t2wedKt8qp+BsbRcwRTsS
 G03yWW/X48RqKw55SgI0xrqZ6Cnid9PQpSO7NjRi7fPcjrsf0mLFusINtUxmB+stCdO3
 okc6WYH8sLMiMT6O+QuhjYVgXRtSqtvccCU5FTcSQaSOpZJD5lXM5isFMPLT0MzvsriK
 1jIMyEePICIAQGYJ05FzK1ZQdUVsHStc/WX0PSY+7E4GbvUw0LKthVRyZeS1bE5lrvfp
 DLJ/NjZ1YRcisuYK474Y8vCYAKFpn9q87O58lZpMapsPGXYF5TElOWjfzu1sclXMX40n
 UEeQ==
X-Gm-Message-State: APjAAAX/IQWLi9Ipfh6V6iVvbwrpBSNaEUZkjMZin1WOkosU7+mYZfoe
 o99mpqYEsC9wFH+4E7YmR6+tGqK/
X-Google-Smtp-Source: APXvYqyG3T5ye+Sgni8sslEfSIU1Y/W3BzjRdvVo2GeXUIv5im/CbyV0cRCsArqXYbS9L42SQt5zsw==
X-Received: by 2002:adf:d4c2:: with SMTP id w2mr12715262wrk.340.1573775127075; 
 Thu, 14 Nov 2019 15:45:27 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id f67sm8000008wme.16.2019.11.14.15.45.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 15:45:26 -0800 (PST)
Subject: Re: [PATCH 15/15] nvmet-rdma: Add metadata/T10-PI support
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-17-maxg@mellanox.com>
 <24d8febb-7ddd-3461-dd60-aa73b1d58f1c@grimberg.me>
 <b2d3e64e-73a5-0f32-f945-3b463e4dffba@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <096f9360-130d-7f42-85af-ce8eddb3d593@grimberg.me>
Date: Thu, 14 Nov 2019 15:45:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b2d3e64e-73a5-0f32-f945-3b463e4dffba@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_154529_222417_07B13350 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: israelr@mellanox.com, oren@mellanox.com, idanb@mellanox.com,
 vladimirk@mellanox.com, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Max,
>>
>> It will really be much better if this comes in the rdma_cm
>> private_data... Have you considered to get this trhough the TWG?
> 
> can you explain what is TWG ?

NVMe Technical Working Group

> In general, this sound like a good idea.
> 
> I haven't considered it since it's not in the nvmf SPEC.
> 
> I guess we can add it in the future (to the specification) to be 
> compatible to other nvmf implementations besides Linux kernel.

Would be good to have it for fabrics 1.2 (with a ratified TP
before that).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
