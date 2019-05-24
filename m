Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCCB29BF9
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 18:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ysSJXptGktkB1j/L7B4jYyaFcE/A0Cd98+ZGmTKsC8Y=; b=GY5ysQADv0dbQaKP+aAhxBMNi
	iFLpLvNhWxULH0Q0/7yjbLi0sPIwJM48BgRUoYzF9bIcaB09Z0cu1dhvglSo0uXd8nAKimw5lpkqI
	q3OZKKWZbvc3yNhlrAc6nrolVWs1O88c09lVssCT2nD9VI1DtAcBosUu1lE05BdRblbRdc9g9hqTi
	eG/chFJyiWvv+cF0518IVNTxcEqFRW6SXDB0nxkgPmVRPy6vzq9EduHVLsEVP8mAeUaTlNj9Mh7Ad
	4A/d1c6muFaMHNtiM8A3WPFP9Y9VMJ826zyiRKFW89IB/+ytt0igxBAXocmlQI0rYNX6hrU5rYn57
	fhfG7RJuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCst-0006RK-ND; Fri, 24 May 2019 16:17:31 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCso-0006Qy-Bv
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 16:17:27 +0000
Received: by mail-pg1-f195.google.com with SMTP id h17so5333276pgv.0
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 09:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E4txfjXYadjwb5ZCJthLiOh22fG5k7AclDC6WPPw52k=;
 b=enuZtrOEd1FvI5eVSbd1LNXQmdjKf2egN7vbXqfb6EdVal1l6XR8oad1Byn5kkEbSA
 XOkjkfM423dJ8YA+d1Xg6l1dI4WD3wc75movybUeCQX1bDwi4ATeWj7xkyN0l66mjFMY
 bsQ+enDbVJdFiGw0Ht1hrjSjPLpaQydNYsc4K6f51NCuhta/CpsV0ZPbys+hZ1hFXzlq
 AP57ZV8gQRle+L7gN8tooaUYHRuVJTk85TUnamq7aMrS8+pNJSyBgdMR9cCLu49WSHMc
 KILwqp2SjVNfd5YW3YWNOAKM9WVEvNhYDaL5s5eAk5MUQTkaaqyG2/qQNI7/k4dwdi1I
 OLxg==
X-Gm-Message-State: APjAAAVbgoAxC4e7Z8Do1IaGSi+yBn2OyuIzlygpssg35YokvZgHC9/8
 zQp0DGcqOvr4nsl3HDCzqww=
X-Google-Smtp-Source: APXvYqxJ2W4stuK1GxkODI3CBH5Ged3s5gRGw3vtJ4XdmbOU61qyhpmcKIDr0OM1c9kYqoCWPTs40g==
X-Received: by 2002:a65:454c:: with SMTP id x12mr20090983pgr.354.1558714644925; 
 Fri, 24 May 2019 09:17:24 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id y10sm4041576pff.4.2019.05.24.09.17.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:17:24 -0700 (PDT)
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: Keith Busch <kbusch@kernel.org>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain> <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
 <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
 <20190524140753.GC15192@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fe7bd12e-99ac-e038-f096-7697186051d7@grimberg.me>
Date: Fri, 24 May 2019 09:17:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524140753.GC15192@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_091726_402819_1A631645 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Your use-case was "I want to understand what is my controller for
>> /dev/nvme0n1". This information is already available in nvme list
>> subsys. Why do you need the mpath-slave devices listed as well?
> 
> The current 'list-subsys' does not show us any namespaces, actually.
> You have to dig through sysfs on your own to see which namespaces belong
> to which controllers, but Max has added a more user friendly way to
> view this.

I was referring to your example in the change log:
"For example,
I want to format /dev/nvme0n1 and /dev/nvme0n2, so I'll run:

   # nvme format /dev/nvme0

to hit up all namespaces attached to nvme0. The problem is that nvme0's
namespaces may not even be those desired namespaces, and now I've lost
data on devices I wished to preserve."

You can still run: nvme list-subsys for each namespace and understand
which controller contains each volume so you can format correctly.

I personally think that this display, while more informative, is not
intuitive to read, mainly because we don't get a display of the mapping
between the mpath and slave devices.

Maybe for starters, when passing a namespace handle to list-subsys, the
output should display only the slave devices from each controller.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
