Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FCC174143
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 22:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=ijAWRzSs8wR3L5YbBiVS2mghd
	jhAHfb/gkL2/1PdcKQo+5jg8s4ZW0eZtfm9A10kD3nMaVB8Lfus+Z4UY3rLqlQ9PebbNhZqiva3Dp
	vsCMPN0sJBOIYgT3JPXKENrukToeaajIggeZucx5gRK0iGWUOiuBOq0btg9MRLMJ4UQsckLY/ivvZ
	oh8AlvhnteA7xbpJFt3Isn9zLp8IqCsarkLMQXvfsOU//JaGRHh9A/6dtXF+2KKFkMFjLoHGnmROF
	A0FNT9Muqc0CD/HGeu+1v5STVDis6Rc0aGtyQ8QKLpHojAKJqiRp3wiZJ2FAQgKOjBYDPKbStAIpZ
	jbUCc1uCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mpH-0005fT-G1; Fri, 28 Feb 2020 21:05:39 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mpC-0005eZ-Pl
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 21:05:35 +0000
Received: by mail-pl1-f195.google.com with SMTP id d9so1701766plo.11
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 13:05:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=BNRxAHnByYohYyFGV3GP3BQXPbAf9UHP5j68EVm5/iV/FqqsxXhGoyeS8rVnJNMPmn
 CgRx3gdbFTAgt+ztuuQThpvuvR3SmqVwWyAhN6JJ53g/6N2TOl8EXD9Y9w9HNuYmxApa
 fb6fzc+YNVkv7R5yWQ7bgJ+lWSy/E4KG64PudpDOPDk9jjkV1oZS2zQRI+AfMDB8meu3
 bAluXooS+O0V6JWviiLmUHLuajgND8AuQYVxRgs6oFCcaQlGR+crRQ++IuBI6gxzmmOr
 wGSm4Dz3Q07pNRMi0CSD1T262NCqdTdcelj7UvXX7Sthxa06k/VhfJEYgHccGh/i43US
 m6nw==
X-Gm-Message-State: APjAAAUHerfgRE7L67E+6ldAqr7/N5RclwiUC6+5kLMPB2fHXmiCOjuA
 I74glTzByjeWKLR3Yw5jo/E=
X-Google-Smtp-Source: APXvYqzYl6jKk6lSKeDhOoBFomOoxznmyPZ1tn6n/3vqzN4VKTYMmuw1LdQfu+scbKqaX2IIdFPOxw==
X-Received: by 2002:a17:902:528:: with SMTP id
 37mr5948256plf.322.1582923933939; 
 Fri, 28 Feb 2020 13:05:33 -0800 (PST)
Received: from ?IPv6:2601:647:4802:9070:d1b8:1f12:d98f:3f23?
 ([2601:647:4802:9070:d1b8:1f12:d98f:3f23])
 by smtp.gmail.com with ESMTPSA id o22sm11439555pgj.58.2020.02.28.13.05.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 13:05:33 -0800 (PST)
Subject: Re: [PATCH 09/29] nvme-fc: Ensure private pointers are NULL if no data
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-10-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d1809a2b-2a6f-0ff7-f0f3-e1d6cf777ed3@grimberg.me>
Date: Fri, 28 Feb 2020 13:05:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-10-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_130534_837850_0F021378 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
