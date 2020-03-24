Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3802619087A
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 10:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PBaKxIRQwXMPuXFpA8qd7DV1Qr232NRORfUgK3WliAU=; b=ZCW4FEbRV74kiyGb+/W9BUGyu
	NZeY93L2bj2QT0b2blJDqZGKAmQAd9/Tc3mnBkNkSJ1XUmCrrNywCwME52yeuo/05aEA97v4ntUE8
	PdNbKWqyVfRFVvzXgjdovG8iplhFO/FkOuEKm1YY2r0cMscscDS21SLXYhlSw3uTtvidvuw/aAEeV
	Jdi1nc9GNZ2Waqx9QYvZ61hKlJSKbnAgZYCs4GPuVr95HT9mavpkHxIhF5M2II9zN8Aj23uZRrJlU
	i7yXQhLEr1Ivqlj2+crKvlD6wHNigJqQh+defqt0wutcg6bfZ/N4e1wuRcOD/9HpUoZSgbNpvRNKm
	ZFZUrc0jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfWB-0004x7-Mv; Tue, 24 Mar 2020 09:06:39 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfVx-0004nv-Vm
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 09:06:27 +0000
Received: by mail-pg1-f196.google.com with SMTP id 7so8732813pgr.2
 for <linux-nvme@lists.infradead.org>; Tue, 24 Mar 2020 02:06:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yhWIprw7EsXJDGu5DgiL2der8u0bSTaVC3yqPSo4eSA=;
 b=V4VqwqY+qRaJbALC4p5aIwbTHMMkeMs+/kddZ1xI3NUEiLsUU5ehNN+TDYyzwGhJUe
 S42F4JL5L+F1pdsrcSBaU9NLbW8QNiVpEObHZ2VD4ooLinAE/XBZlLB4RgkznDYq4o8N
 ZHmrj7UklB6HMq69nnjbsMUB9bTVnoO44psyTbyLmiozW2UvpOdF6LcybSHvHpbKC0Jt
 PhRx+wKImL8w+yF0u6wnmRApP7sjIOCc7o2vN5Fi3PSAdKRNYkvs7xXI5H9q8XiJ1CkF
 WaABfrHbPMD47hwUYCT1eEGWoTfftftJ9KEeQqzwXQc986ZLshgrQ7k4lc4JeZ7NPOiG
 OGmA==
X-Gm-Message-State: ANhLgQ1k+zlqnLCu1JQWOiI1uOCLW1MLLMGp9E9ZnT5bG9Znnbh6k165
 IkeVSzxzJhbIzQtsfuLKEXpsLpoj
X-Google-Smtp-Source: ADFU+vumOqKT+IfBB5FVytp6eRcHnxO7gEpF9YfQmaQnr9Ua8ouJJ+f1txrRZrjmpO9EzwjSDpRVkQ==
X-Received: by 2002:a65:5b04:: with SMTP id y4mr26764193pgq.25.1585040784830; 
 Tue, 24 Mar 2020 02:06:24 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:45a4:15de:f2dc:1149?
 ([2601:647:4802:9070:45a4:15de:f2dc:1149])
 by smtp.gmail.com with ESMTPSA id nh4sm1728072pjb.39.2020.03.24.02.06.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 02:06:24 -0700 (PDT)
Subject: Re: [PATCH rfc 0/2] support ip resolution with hostnames
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>
References: <20200324090324.24459-1-sagi@grimberg.me>
Message-ID: <08fc49ed-4bb2-e5a1-849c-05fc542d71ba@grimberg.me>
Date: Tue, 24 Mar 2020 02:06:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200324090324.24459-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_020626_017170_F741CC36 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Needless to say that this series is for nvme-cli...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
