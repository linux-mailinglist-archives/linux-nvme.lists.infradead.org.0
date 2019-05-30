Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6666930171
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 20:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NKztno8RHn11ZkLBS+kGej+O6ropOzy7hh9jEQLCozU=; b=p7t+3tgxgS40/0x3Ai65riPN9
	z6lpvNvQmex1ieuxtARuuY4nK7LL6VaDte+CVLEeBtqzVcJJ7E+CLQibERO+9erslzv7/FZKkMb03
	8qekjFU/+T/TTPEmX94A1LHP/Jcf/Oc16p8aKfejntv1ZMzIo21EMD7MJ+8sVZTxk5IMdloO2+aMO
	zwbyw7kLUV9wxx18wIlrzw7wk8M1ybesJrfEQCjvvZYZMjEP87ywt8K2ikhEm/vjt8O/gRTj6p7nN
	No5GHtSh+EBDkqTHWWvoYcFUfXGeN4H/DcXICH/X+ej4Rce/xrZVIwIXNq5HusB1ZTYRA/08ALo9B
	oXUungXfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPPk-0004nL-TQ; Thu, 30 May 2019 18:04:33 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPPe-0004mr-Ht
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 18:04:27 +0000
Received: by mail-oi1-f194.google.com with SMTP id r136so5661786oie.7
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 11:04:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DWDZPgpEVNo8PortTB6vSs5eRXRXKsKG/+MRBgKBeYE=;
 b=DxECg8usFZjE6+gjD6SuW19yZ0Vlgcy6W2aY8Oii2E5qfYDKyapcDq+AnOQVaCswRa
 tIFxN4x/+CMEb1hldp+b2rT7D5k+YQam0V4bVgK9n5hI3Zjut8ZDmyf5zuivkrXQ1tF2
 f92xmhykuV8zF0i77iZeTaL/CcTPWjmLyDK9l4lTsnV9B4vD5LbpfMTkOHqEHC067SDa
 7JVTt7GCfp5ZLX4ruhCr/uj6nUzbrxcZ3vF9tfxZYSP7KQ2Z/x4BJZ1Oedia81o+RAEP
 Kv26ta0mqBpL3T4grPsWIpnLOAwKj1SN1YAML7G1YUDUg4S10pUe2hIQ0i2PwIPt5y8F
 vrUA==
X-Gm-Message-State: APjAAAVodxOj8s9A41RvW75m2sfIKeO8jZp9GqmnEyT0nF3OHeo88s7A
 W1cWqrnTA3Cpaoc/G/HRDC0sU1Pt
X-Google-Smtp-Source: APXvYqzieGHSAFAtyhfXoN3MSwHKJGvUs3Avw/OYk7KSU335Oha9QF8ks9R983R3P6KTQ1AL1QG1mA==
X-Received: by 2002:a05:6808:64e:: with SMTP id
 z14mr3459842oih.86.1559239465086; 
 Thu, 30 May 2019 11:04:25 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id r205sm1265797oig.0.2019.05.30.11.04.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 11:04:23 -0700 (PDT)
Subject: Re: [PATCH v2 0/7] nvmet/nvmet_fc: add events for discovery
 controller rescan
To: Arun Easi <aeasi@marvell.com>, James Smart <jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1905291609220.19585@mvluser05.qlc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c1c8b6fd-87d5-852c-f320-2c2e2384d6c2@grimberg.me>
Date: Thu, 30 May 2019 11:04:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1905291609220.19585@mvluser05.qlc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_110426_592256_BEF5F46F 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org, martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Apologies for the delay, wanted to test out some of these changes, but
> it looks it would be a bit longer.
> 
> Anyway, the series look good to me.

OK, so unless anyone has any objections we'll pick it up for 5.3

Thanks James and Arun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
