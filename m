Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148A5884D9
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 23:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xiz9mBJMzuvgs6avpkAjeKAsMW1GnOeI+cgQANoM1WA=; b=RRqVeXstXCk0W54yIxQ6dHCSi
	bTrVublw9KKfl44dp2dpiIXCjk5EQitTSFcVFVlt72MciNkCpstV3Diu7gTLjXJzZVwOHEwaj8gZS
	uek9OOaVUromrAAdpMTvOpB+B2Ok4lFzKZ6Q+wfANJ+3hhTjgccaMcGlIxCwvd9VG6UvDoWxSMo/d
	tfJdkLl3f7qMUSMEU1jPkd8OogY7gFM3JSYf/SNgQ3JHatjuXHL16VE9L7YOpY9cNvARGuBMuwIae
	GDpctbpWA5PP4o8nvTxsyLOjAbLEKFJFsb8/0fwlxT5glKghpdLO2rrmdllxArIFT04ZVABwOTgQH
	6sDzq0L3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCaP-0001V6-Vn; Fri, 09 Aug 2019 21:38:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwCaL-0001Uh-RU
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 21:38:07 +0000
Received: by mail-ot1-f65.google.com with SMTP id r21so132117794otq.6
 for <linux-nvme@lists.infradead.org>; Fri, 09 Aug 2019 14:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1Oui/HQIr+8LUsQMLLePKNrGWKM3hgZikPX72HBP3i8=;
 b=MtPW8TlPpIJ5taw5G6xJ6GasewgWLXOX4MI0+F6jbkHpSiUTQlAxpM/RIpMaBfCs3X
 H9ZcNHkcPP5Bx7txj73Y5Z/3sGskHGbVd+GkclBKKpAEICM7UOKRzdY0XXKhu9sxLCAE
 ssKBJMovVAs0/X7x3LosIChtVHci1yjRTs2rYw8yVisRFxQypdHiTloRzhdPE532OPBV
 ru3Z9oonnLa5TtOvccPU1ze5hBzGIkstUKRuG6NHkYTm4RxF4ENWjPwIo44se8D0usi2
 311FKgEzyz/abbjNA+0stqwB2CcKBHMnstY8GDsXDm3wgdGM56kBD+A14FXoi9ywwfSt
 MvGw==
X-Gm-Message-State: APjAAAVofIKKwB0WsNv4AG5jtTpiAq4mU+DCvr57nLGH3fR7eUYzKumy
 Ng8G1ljUnc81lwvvc6/aVF8=
X-Google-Smtp-Source: APXvYqzPQEKLprUdRHqNxGGIeIVUOSNGV0RASjSBTkLpgmF8+Le5TiNeJdB0DzoVPKy5pt/JQeNf7Q==
X-Received: by 2002:a9d:590d:: with SMTP id t13mr9095055oth.281.1565386683960; 
 Fri, 09 Aug 2019 14:38:03 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id p2sm32066811otl.59.2019.08.09.14.38.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 14:38:03 -0700 (PDT)
Subject: Re: [PATCH v4 2/7] nvme: return a proper errno for sync commands
 failure
To: Keith Busch <keith.busch@gmail.com>
References: <20190808232536.4258-1-sagi@grimberg.me>
 <20190808232536.4258-3-sagi@grimberg.me>
 <CAOSXXT4HByc7QXdUrfGgYB93jDRKsFETUsYxw7LL7=AEsOmipQ@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b498b6b8-4e6d-3e25-1f93-4cfcdcc716d9@grimberg.me>
Date: Fri, 9 Aug 2019 14:37:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOSXXT4HByc7QXdUrfGgYB93jDRKsFETUsYxw7LL7=AEsOmipQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_143805_891963_2412D550 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> We can't readily return a negative value if the controller did provide
> a real response. There are a lot of driver assumptions that a return <
> 0 to nvme_submit_sync_cmd() means the controller didn't provide a
> response, and we should abort initialization, and >= 0 is a command
> status returned from a responsive controller. I don't think there's
> any driver use for specific nvme statuses, though, so returning >= 0
> blk_sts_t is probably okay.
> 


OK, I'll go back to what you suggested earlier. Thanks Keith.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
