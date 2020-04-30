Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB20B1C0B02
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 01:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=nd7flYCIy3Hvvy3BsfHnOJUgg
	jTvZFHbm8F6F4VGjLKLO/LRJ00ZDPD0hJfc2NLQBPMtkF3PT86aIJl3Y2TTLQKdY41kscKxpCTpru
	BIQc9RpPXSbehl80FB/JL21ibe+4a34PcFVBHYDJ9UgpJYb1uCrMuCQ6SqlQWCxU21YRGsrV+Pcv5
	j5dImioNk5oU3LnMW6YxNzIj4mCYikSBNQxEs+W2wGaOgwGfGngNBmwZxK9S+GpdPN7sOEyjmjzsP
	AaOtxW0H6s26gX7GNMHL6WUtISJ+mSWErzWFZDf5aSajLa2R6jGeMq1SslX4bLbgqoUlODGFT3EcY
	yPNF162XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUIjU-0005sv-RU; Thu, 30 Apr 2020 23:36:44 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUIjQ-0005sc-5L
 for linux-nvme@lists.infradead.org; Thu, 30 Apr 2020 23:36:41 +0000
Received: by mail-pf1-f196.google.com with SMTP id p25so735117pfn.11
 for <linux-nvme@lists.infradead.org>; Thu, 30 Apr 2020 16:36:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=DWqfSYU0hHA+tXYvRPH3cS1t+U3V2ucOGKa4Ipdtl8vTCke/ShH+F+XaCYmO8tFpsj
 +hcrcL26HFQaUKxbwiNwZQVPZ9UqxLPx9+Sj4gcsPx64s1mNP5rraNalQphr/UJE1u/f
 n/6r/k4RCBsPiWTwFJ2wuBEuAK5LnPKe4Na+e32qjqFMUdFdMbiGFuP1nAnSCKd28Qjr
 Ur78OqokFd2iVcJWZEFX9nfup7GC9P/06W3rGFnEiPsykJJemudeRSBylDoeZc2Dn3z3
 B06F9FhJmM2ijRJaO4MuZlRFlV4ydFbP0VAbgb4zRfJCr2oW9SarCibyUyNb1zXut2HE
 mAMA==
X-Gm-Message-State: AGi0PuZzh4L8B9YZgO2aY55MxQd+Gnta/DIDwr+7s1XGq2EkJ8h0jIer
 5vX6o5U9U6gI6Q8d0Lta/t7u9gqd
X-Google-Smtp-Source: APiQypJTAjwNEGBlPF+x5FJ7MtX+jIFw0XeVUGM3ijMwNkTDWPNvDrB7Jm5n2P6/Uosx7PyDzwfakQ==
X-Received: by 2002:a63:e64d:: with SMTP id p13mr1373939pgj.240.1588289798728; 
 Thu, 30 Apr 2020 16:36:38 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:7c3c:3588:d5ec:d94e?
 ([2601:647:4802:9070:7c3c:3588:d5ec:d94e])
 by smtp.gmail.com with ESMTPSA id a129sm741280pfb.102.2020.04.30.16.36.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 16:36:37 -0700 (PDT)
Subject: Re: [PATCH] nvme: flush scan work on passthrough commands
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200429203123.31302-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0e813bf1-ee6b-aa06-d3e7-80ee5e35df84@grimberg.me>
Date: Thu, 30 Apr 2020 16:36:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429203123.31302-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_163640_199150_24990F09 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
