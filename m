Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF276399F
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 18:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=lPKH450p5ZmobaeuWLqLV+GCN
	dDxU+FyZ8BPWA6iEGvfXZTsB5dUVSt6tQ42W0Q/DoMzPg2tFhQ/tITxBbk9kY8QqRl/WXKrt2AlL8
	GZKTsRA80D1yJx0vCrBIL4EyJTC24RMJkXBI5xztOg+eI+x3jQFK7lWMpwU0Nk5dB8EPzIY27J1yo
	qyCOvFOdkCCDLANXh9HN8WKJa9c+OBgqa287rVjmTnMxdueg1L9kBZhisls7WuT3NW2wxz++fHmjk
	AMI/G3Z60O0gxhlP6sk7ak93hWpVwePD0tYX9EccOFui2zPXzwPljzd5S/rfUwkvnQLjMwFWSxJa4
	u1alYJ/NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktCq-0004ln-1Y; Tue, 09 Jul 2019 16:43:04 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktCL-0004XQ-QO
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 16:42:35 +0000
Received: by mail-oi1-f194.google.com with SMTP id l12so15873333oil.1
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 09:42:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=XWza2NquRs1qlahZvwPDUsLrIM6Becesot2AEWSbCDgqqVLlh6yHqgQBIcli+Mi00C
 Z2ZZAaoNFCMjR0BFocQxu/GY+81aEcu3p2SHXkzhU8Z+VwtqQpykRQqLe1ba/Hju7ceX
 kMj+jHPmx1NDihMa5jD4OiOBTROO+MM1gYueHHmRolVgtEpdiYKWT+p5tOyDlRzhzihO
 aWEyEm96wQ2uYwTsZtuvLDxKNiHs+VULEexPGwTi9s1aLJXpnTscz7W0QMYqa2/ef/Hz
 n/wOVGbFny6D8Nm0D5szPGGELoObkh7LqFlDp8ZtDfON3MvbKdZamb9LqYSP3d4CL4Qc
 7z3Q==
X-Gm-Message-State: APjAAAWNCUcpH33AJk0weo1iG4ksEZ6/QLVRIbyP/7T3SslUEuA8mraP
 9ywFKKJ+GiuZ3/iQSQxZRWw=
X-Google-Smtp-Source: APXvYqy/NvH8Jy1fUqBkgiO7qolOoddcYhCK/GYyDsewcEhXAJQvhA+M8NJuYwfl0C1PxezZoYxlyQ==
X-Received: by 2002:aca:4711:: with SMTP id u17mr564351oia.115.1562690552583; 
 Tue, 09 Jul 2019 09:42:32 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m21sm7401151otn.12.2019.07.09.09.42.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 09:42:31 -0700 (PDT)
Subject: Re: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <97a5b08d-5809-9612-be5c-1746623efd85@grimberg.me>
Date: Tue, 9 Jul 2019 09:42:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_094234_039184_2ED5BFBE 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
