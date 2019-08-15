Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF70B8F1D6
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sdc/D9MWyMfe5UCcj7AOI1LvPCWVRzuuRTmuIe67nVM=; b=d4WlRTwKJnfLiFY3ONbYIWllh
	dfM+qqLQrpzEaJ+Sj9nMYPOC3V12H0T98Bn0qer5Jxvhkp5j5zJa2Zv1vqSDG+dinus/5A6wDqFBQ
	tp1ST33iDOrPme27/cV/piZGvAxsIh6PtdjicNTGAhb8vLZkCho8RCxp7Dr1H8iv3U42ebIqfLuq8
	KAKJaXar2ai66+AzaXpKaA2jXB5kt4uM+xQISVTe4+q8SnrF+GgWIJFxrVWH5krx4NZDVOqBeFJVJ
	XHQf1okp3V+WL+rwDy51n4HDwOiobixU2y5I0mlfI3riOr4QBwxJta8aS4GElwEQQY4Sw/Adqw4uf
	J+UvKgPsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJMA-0008Bv-55; Thu, 15 Aug 2019 17:16:10 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJLX-0007lt-D7
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:15:36 +0000
Received: by mail-ot1-f47.google.com with SMTP id w4so7032188ote.11
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=00NSiakplEGSpOEVwAs2LDmxMFmUiu1d1WWFZ5fV748=;
 b=U0pLy9kRc9e64lV5KHImRKLekdw8+30bcqqxT0dfAQfnnLuQxJGIKXLfNfYn+hF0ob
 uHaxoEQKuUkN6m10K82dZWpBDvpplqKquhG0WRcK8hbMe2cFuZvrnb5eZCj7X1FKPDwX
 UIqe5h+Ni5SArR35ss8ABz41WIGDp6sDxFpPc52PQflm2VX7DH8lQuLqkxccj8Ok/2nB
 UnZDXYxNrIpWrPnUZUuKuYkTacjR3g4dxE3hU2wdEovM4Pd7uxwOK5nOv0K3/h857Kwn
 3kfzW0q+SkT0HL1aj76ADYcXl4FrcVCQAiM+uPC0pnLx1zQC3SKn/xRLTubSOYoToe29
 ta3Q==
X-Gm-Message-State: APjAAAXqOylBHg+8+W3bJYQ4MITXiVVBxNHXvAAIOU8dZtzzT4rvmMLK
 SwembM8rq7QVeddg0OWxK70=
X-Google-Smtp-Source: APXvYqxKWd3GbPCGSlhU7jBvcoSsjMOzVm/+9goefpFw30DtV4fcRLjN/uzOHDq5bk8Ss2O0PELwTA==
X-Received: by 2002:a05:6830:14e:: with SMTP id
 j14mr3990312otp.246.1565889330013; 
 Thu, 15 Aug 2019 10:15:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id f21sm1253937otq.7.2019.08.15.10.15.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:15:29 -0700 (PDT)
Subject: Re: [PATCH 4/5] nvme-tcp: Add TOS for tcp transport
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565876027-25092-1-git-send-email-israelr@mellanox.com>
 <1565876027-25092-6-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8022ef05-466c-6994-2e63-e8084e9749b4@grimberg.me>
Date: Thu, 15 Aug 2019 10:15:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565876027-25092-6-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101531_455539_B7850D81 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.47 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> @@ -2314,7 +2326,7 @@ static struct nvme_ctrl *nvme_tcp_create_ctrl(struct device *dev,
>   	.allowed_opts	= NVMF_OPT_TRSVCID | NVMF_OPT_RECONNECT_DELAY |
>   			  NVMF_OPT_HOST_TRADDR | NVMF_OPT_CTRL_LOSS_TMO |
>   			  NVMF_OPT_HDR_DIGEST | NVMF_OPT_DATA_DIGEST |
> -			  NVMF_OPT_NR_WRITE_QUEUES,
> +			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_TOS,
>   	.create_ctrl	= nvme_tcp_create_ctrl,
>   };

This does not apply on nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
