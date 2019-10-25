Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9A7E5590
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 23:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=AmTYoNLDuCNWI7y76b3TLHZwL
	Int6saGfSPs5iiOCszLW6ADdT1tzyqfVtoF2ZZLcE17APLOUeoBPHAz7C0eHRZDmwPmALeruip3Og
	UKTxuAGMon4jiorDPUe0ICYQ5oDGd730rP5Ixrc/WBye3sDFx3r8ZAHOL4NikfKUMS3nCmJ2sZ6P5
	ygf12BhvWFYQo6gfD8UrF7ooqAOZT+YzIne73GUamNtnmhKnrfAQldIZOtqajEBCF+S30He+Sgrku
	uFKtcSuA1d5PJHICNYr3ecgYOnzcgqt8AqEAElXkotKXwxhPwUezS2oG7EABvAOIlXFyJTMxaGgjy
	tTiUM/0Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6hN-0005Te-1J; Fri, 25 Oct 2019 21:00:41 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6hI-0005Ss-8C
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 21:00:37 +0000
Received: by mail-wm1-f67.google.com with SMTP id q130so3370723wme.2
 for <linux-nvme@lists.infradead.org>; Fri, 25 Oct 2019 14:00:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=eq/HOnN0ZbFL61cHNW5XcnhNAnzzrtYN8aa4PGqfcTM71pfoUkExjnPSNJdxutFqge
 w9K7su6W5IPsztePAF/gpP1KkkUhL/E3LER/oRGjP4KbVzIBqBn2tV6boiVSjdeH7Y2p
 GoVsKh62h7Mu3aPjgAQFmCwqmKIksGgw3obLO/cgwPMFzwW7RkJu6vnZHdo1uWD0ns97
 8a2za0VEvnwwFY3tlacaTUqslX82aqMZDJRUhMiPZOR2Z98N7rwLX3WxAPx0fxoRKP0V
 +/qY+cXYQhOeqrjpTGL89CV94iDBaGbH4PIbi4qmk7dFWjmqLzCoAQ1VQ47DHp+A5TLR
 Ue0Q==
X-Gm-Message-State: APjAAAVnTTB7ogWT4QIwieMLc8eQ1K7JHLKSgm4iKdIvEe7XEXfRaXU+
 uHNGN7G1qe08Kl9o2MhOLudqYDsA
X-Google-Smtp-Source: APXvYqxuCAxMeC9TPK7rjnIGIIkIKvf4C9ji0Act1rdnUzIq13+WlNavKj7UXx1bXBBdGdYuML87Og==
X-Received: by 2002:a1c:2b45:: with SMTP id r66mr3631489wmr.163.1572037230134; 
 Fri, 25 Oct 2019 14:00:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g10sm3313633wrr.28.2019.10.25.14.00.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 14:00:29 -0700 (PDT)
Subject: Re: [PATCH] nvmet: clean up command parsing a bit
To: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
References: <20191025133858.21505-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e9af07e4-fd81-fd13-9e95-141f8adfce73@grimberg.me>
Date: Fri, 25 Oct 2019 14:00:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025133858.21505-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_140036_292299_37BB6BD9 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
