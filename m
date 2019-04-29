Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784F6ED41
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JDoIp4HBmhUdBn7fQI4ke9PBQit9boB22s49c/By6y0=; b=Qy/b6NAuP7zJBfSOnbMMwlopb
	ZHPzxHKX9tFSfLI5KSIuL2ImQ65YnBWGhjkv0pbeYBe+1TAdSi8mqVlz7iQDT3Qpbqty/aiJqJmr7
	wmwC7cHzwmhocfAU2zvBg0KQGnmXPa50MDa3MOTgXPp6HvTwx0BfOQG1MbiifWpXhIcoHLfTwwbga
	hQXOzu0tld7qsudpONlMWyZ2Mk8jW2kqqjKbTAVg7SmBNqTBluDFH1bKr5rY6AaaWSNJ7IiqccqlQ
	vhzhVIE57MjhPw4lsV6A/m8EwPyQAxuSdjp24MXEfdNGnnqtRNykyndwY1clqlhFNN5Bpo1rgCOZc
	4+8f332Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFZV-0008Fy-Gn; Mon, 29 Apr 2019 23:20:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFZQ-0008Fa-0R
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:20:25 +0000
Received: by mail-ot1-f65.google.com with SMTP id n15so4209160ota.1
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 16:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dBM3kLO+OmxSA5ObktuYd2lmMDcK+c/9PBGCKy5Y4PE=;
 b=kiOfveLiqiTP7OB4kCJC/2TbsmrsVk9WHl5K544AQ9xM1DLc659oT8thwB+0O66lTL
 mb8mNAlJoynGLa+blTD3/tof8G/l8i1btmv59Sf9BpQ+6aEqNdVafBwY7Q4rLc1ywjL2
 6cR3So46P/xkpUtImrWQwxj63F/TMnhn83cPvoToF7x2TcSN1GYRLLAovbqy5dCorFzd
 LpBFfZayOxcj9yoCCHjE8INlo4b6LCrkKdICnquVuQ3zLlsBbqyYoIl2a0XXTLRGpPsg
 nrz3FRkOAg+o23E9UDR81EhdMYgMXXgtBhwOMMOBbdkKjLHYNAYo0Fu8LNtw9SRb7NPq
 7tKw==
X-Gm-Message-State: APjAAAWRZr9biSKPNID3CjFzfKHZCAgnmTA2488x0HOMwl6Gb9bfwasy
 ii+W+hioZNhlu8NyqNZXDeo=
X-Google-Smtp-Source: APXvYqxCt1SQRk99KDwilc+0JGegASPDMSPyCDKvC9hUE9S2t+HpTvvfXiOaqGOdCNPakd9wE/MQbw==
X-Received: by 2002:a9d:5e82:: with SMTP id f2mr624300otl.217.1556580023128;
 Mon, 29 Apr 2019 16:20:23 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 33sm2740967ott.23.2019.04.29.16.20.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 16:20:22 -0700 (PDT)
Subject: Re: [PATCH V2 3/3] nvme-multipath: improve logging
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-4-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ae5bd9a0-6842-9864-385e-101a4cd0634e@grimberg.me>
Date: Mon, 29 Apr 2019 16:20:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429032442.5923-4-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_162024_054205_2D76EEA7 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: hare@suse.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
