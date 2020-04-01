Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F7919A50B
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 08:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DnYxgrG1vlw0uXSCvTuim0y3QDUPS6WHg5BnZ0unEJs=; b=BdVNCGLcVSdrgLaub3shYliPf
	dypPRPqsXtzfpM5B29+gCgeC8f8vOV9gmamhRRcSP2YIrbhmfNylZWmqIsIDnB7xDukP9OJE072/u
	0WWYUtvcjEjMvyBGrGIa2ikWKpSetEtn1h8d2n/AYNJy7aXvss01vW/JYXyM6XXLrjbEGLQ4s/Xej
	NHMx2kTsGabhwl0sMvITc2m8j1qd9d96+SV3P2CTvAaKmvS3ITp9nPKd/yPLaB7j7PGqbs9by9OEQ
	aWMk5AQKbvd/9Ws1KlSEY5bS0uLIZKDB7d13YzBDt5RsCJID1KVopQ4f8gkgpPbel5g+H4femnORi
	r+h7IVgoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWTX-000726-Gg; Wed, 01 Apr 2020 06:03:43 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWTT-00071g-I8
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 06:03:40 +0000
Received: by mail-pg1-f196.google.com with SMTP id i34so1485527pgl.4
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 23:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qLWgDEsv6Pm8xXA3b7EwB/5Mo11wbBlhglEk9B2yHVg=;
 b=W3iDow7g73jIPNa/y5TDRe87ggNqhqJes3pOkfIzV4za9Z0dMGPHYcAwR00UKj8EUF
 Z4SGHwlTDmZXlqn5hTfCEdFRJ66b22hxDE6GoXL3UMALA1LC+fggutQBgs9iNnXHH+0G
 IQIF4PSaddy4yN18BK40JXZ2JtZ4AiR8pmHrlxx2f/iQc4g2hhixCrnS58kcRFdV1lTx
 6JUX96xFIhE9IQqAgR/66wwvQ/KTi29oa/hMtc06i7tQBwpWiTv/t2qrIZNAsCUq6BXK
 Z2kiHxrnWVvgWdU7NRqbdr/hMf6IZybjxNuUKoAOLmefiPCkGKfX2rzmnFif02knBzBi
 k+Lg==
X-Gm-Message-State: ANhLgQ1gcFo/ugJt34w+gDTEulxpAb8BasYtILoH7KbmUPOlmZoDIUPy
 JaWc5X6Q+MUviFkM0gs1VkeFDEWo
X-Google-Smtp-Source: ADFU+vvfO+tmWL6lmuRhFoXEH/Y6dmMZUbIcUhF9/OlsSnT/n6Iq8y2O8W20nZwAQx7EL3MpbTmp2g==
X-Received: by 2002:a63:a54:: with SMTP id z20mr21542418pgk.372.1585721018483; 
 Tue, 31 Mar 2020 23:03:38 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:cca1:4ce7:5ea6:1461?
 ([2601:647:4802:9070:cca1:4ce7:5ea6:1461])
 by smtp.gmail.com with ESMTPSA id 67sm716483pfe.168.2020.03.31.23.03.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 23:03:37 -0700 (PDT)
Subject: Re: [PATCH rfc 0/2] support ip resolution with hostnames
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>
References: <20200324090324.24459-1-sagi@grimberg.me>
Message-ID: <27a36245-4e37-ba30-48a8-a4245729509d@grimberg.me>
Date: Tue, 31 Mar 2020 23:03:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200324090324.24459-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_230339_595894_6B2737DC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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

Any other feedback in this approach?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
