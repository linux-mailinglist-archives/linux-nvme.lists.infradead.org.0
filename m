Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1B1ABF37
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U/zuM1TzU1KNO7hbPXgj1RtEQz3FAsCRTnupd5omXps=; b=YZ7TgF1Tl56QWf43ysb2uaZzP
	XvKHWr7o7neTjvBFSADoSRxpQ6iZN2wvUqPh1MRR/XiyFWB/H/cntXcQE985ks8aROR0qnS2YIBeA
	LpAAHJG/i4EHX2SGh9sn0/Ib6CD9yk8I/8krX4qnc1HtbqZ3xiCIp4VXmG6+zAOK8r+aNV1mdZnG+
	Xn9jA3ch5AS03bN/UApSCm/alu33cU8XgLlD2IKGpFA/WoErJhOxsYt3YCykiw6FZhD7gaH8rFF4A
	7/ke0xIUTUB76A/8J4s1NTPZN8p4CmWgm1iyJNDgULXxCAKoTE6V2c5MX1yutj+IyL/KVfGeal+Yy
	lVZyqAkdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6IkA-0002Yz-4J; Fri, 06 Sep 2019 18:13:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ik2-0002Yc-Dr
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 18:13:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id e12so5439757oie.0
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 11:13:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xLmL42CiB+Tx4ipPu1XCKAf8GsimAkZztJFd7tUoIPo=;
 b=g2PCBksNfy4pOBgRU10cQFHGTYAEP3zvIxKB0UBQBpmLN83/4EDblz6gyRe3flIeHB
 f0u0pUeTd3cwPVjriP57pqpf3UqEQy2/7uFAGShOcWe0mPWRjA+VK3Wwk6r8GDsuEIGt
 3GLYij4qyErTFOi6flR83A1pa/8DfCA19euRMGWXjuyDJblzbm6TlMt8dFlXVUvSh+bD
 atJ+0phfJU97uvKe6f6txPRWLgkHCuW0F0SkDDcM8mQcaf1Jtn64RlUc2euO7WkjLxq+
 CEtSNNrwUL/Gtz7ftG9Ht8Z/LwjNCtd1wrx4u6zWvw602FqIQ+0xetipUrX4pOB//vMO
 un3A==
X-Gm-Message-State: APjAAAUFpi2iWK6TKY8eCErz955GokJoXx2/70dYBp3hfCqn3aHWITvy
 BMfPwDQuyxDH+j5OrEnVhLQ=
X-Google-Smtp-Source: APXvYqzBApLRYJOobIsaIXCt07zmjmoFFv2h+YoAKcXu9gQ4pb8WJq42X9wSEm3uXoLfOiTbR2v4Vw==
X-Received: by 2002:aca:4f46:: with SMTP id d67mr7832976oib.102.1567793629327; 
 Fri, 06 Sep 2019 11:13:49 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id u7sm1862820otk.20.2019.09.06.11.13.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:13:48 -0700 (PDT)
Subject: Re: [PATCH] nvmet: Use PTR_ERR_OR_ZERO() in nvmet_init_discovery()
To: Markus Elfring <Markus.Elfring@web.de>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <b35ec629-f75f-2eee-1db1-98874f486258@web.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <655dc338-b7c9-cd01-1b3e-59fe34c87f6a@grimberg.me>
Date: Fri, 6 Sep 2019 11:13:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b35ec629-f75f-2eee-1db1-98874f486258@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_111350_463119_A17F3474 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: YueHaibing <yuehaibing@huawei.com>, zhong jiang <zhongjiang@huawei.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
