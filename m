Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3188D95A
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 19:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9O4lCRNRhs3jsQfAaoCNDnvpMZkggRgTAi6DFusakOw=; b=P/i0PmpYRrZd+PxkG2ObGY5XB
	yIy80s27MctwUuwYjZ49gH1F0rTs4iUEc+nPy9tEdre5YUKc5YzctzAMCw8NH6prfL2zfoRoWmWzN
	VdAMpCLF6r2IkZJSks3FkIRjbeacXwr/r7mLZup2YsXWgIiZazLzfuheVIRNVfsRXaDclZxj+UdDV
	zAKdNZUO2ZCOW7AbHojjX0mEpCN91vSQrJ1Ynrs07hGFgGIyjq/wCAaksDd2Rb+RpStrPCA3vaydN
	LrnzRVPXAWJA/MxesD0++c+ztpb5Fos632paaWDC/ax08/8K5h4l3g+754g6ERu+wGIsmCCvKYZJA
	R2dqQRWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwlH-0006zd-EG; Wed, 14 Aug 2019 17:08:35 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwl6-0006zI-Ei
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 17:08:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id m206so73942229oib.12
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 10:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QN9suoFi0suJyxz8pL651yXLJv7b0PLaA1JTU/6xCJc=;
 b=XdXfiCTzcoIGjOyu1xWc6Kgr1Y+iAiBSJ8oIsDjsMwO3Pr+V2VkdBHo1RGCnRQ/8CR
 kTD1cMdtvWmtK6PxJ0jVgE7Oc7zDq4jDyhF7ZpZTovH13zJj3gkEUUlkg5UQ9EznYW1L
 5g/FXi4WsJtrop/R/X85iZt/RfVAGnllYWurrutvDprkUnrcOqMhc1uXCzReoKEZb3SO
 CkXW8mYcLXoDk8dbuQxUgfX83ZVS6q8DD30h1CcVc8RQSOawa/WHoqQDWofMF73/ksMT
 VjVvOmyXt2hNuW8uWGiCnOqYsWqRZXJUBgYU3WIfpoCVbM1fsXe7dLYMcj8UbQaR3lPF
 sKIg==
X-Gm-Message-State: APjAAAVAhSNu0rp2sGnDWeh9TBWAp8NrEwJxmjkM6ZjTLJ/vJDPcVKsF
 6ecwNqnJk4GDzpLf9yU6GYw=
X-Google-Smtp-Source: APXvYqzyDach+S9JHltiZO2JcRvfDwBYmSEnaL4FjnsrvAu0tVPc/U10GasTrczjEi8LUM6v8d/QOw==
X-Received: by 2002:aca:fc43:: with SMTP id a64mr695389oii.57.1565802503750;
 Wed, 14 Aug 2019 10:08:23 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id d22sm175912oig.38.2019.08.14.10.08.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 10:08:23 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
 <1565777981-18755-2-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <33ddd40f-14a8-9506-01dc-65a049f8bb5f@grimberg.me>
Date: Wed, 14 Aug 2019 10:08:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565777981-18755-2-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_100824_492694_802D4E16 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Added 'tos' to 'connect' command so users can specify the type of service.
> 
> usage examples:
> nvme connect --tos=0 --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
> nvme connect -T 0 -t rdma -a 10.0.1.1 -n test_nvme

Still don't see how this is handled if the kernel does not support
tos yet.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
