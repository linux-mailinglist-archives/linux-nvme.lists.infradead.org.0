Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F201B54B7
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Apr 2020 08:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=fPlxfBz2rd6ACVTg6N6eozA0g
	OirB9/LF8ug9iKjXHY+oJX3JYbj/h/PSIsGlkuNjf5INlxMirD0VF87KkVp+oiyXePTdEIvJiC7tj
	yimK57XF8TS8u88AER0ffHVNugyLXZsJnqEELgYebTdFpaqKLgsRxDIA8Rm8xOibXXZNgFV7UE7Aq
	PPX/dh7oFAptKx0wfrpv9y/KxBe4taAn/LRa7J8cJn+lyBepHxCMYK+C1Ti/yDLl/H91+oa5fL7AQ
	0ym10KGNxYkYM/6i1+/Pfn8hesh6n0vNi565IhuhE8qQFz0QIag6lfT4ge/qgP2Iy+ozwOQo3RliX
	pltzgtrcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVMz-0005FA-CQ; Thu, 23 Apr 2020 06:29:57 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVMo-0005DK-Lb
 for linux-nvme@lists.infradead.org; Thu, 23 Apr 2020 06:29:50 +0000
Received: by mail-pf1-f194.google.com with SMTP id x3so2452940pfp.7
 for <linux-nvme@lists.infradead.org>; Wed, 22 Apr 2020 23:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=X+ePuo5ujw9TbRmvejvwDXlB63RywdjoG3IRfjb16gimcDNv1rrk2aYAq4y++CCYYn
 I+TuyIYP0Vtj32NDYYdwQlOZ8o6ocYgz7VAFxgrIIVa0Ew2Rq+hRko8IfXrR4O64UvJ7
 UfRyQYyeFM7659zQd0EgSFGXMh3ycb6Mi6YmwkG7Ltv8iBDxExOl/bXwaD34jZGfnliM
 2obpW0/Kwi9iOJY/BiQeq+zO/t0cvi8dDRf6p5vCcK8unRdG1RjqHfkzLxZaE1eZNjhL
 GilXaDqXBdBO26wbB0G2jWmBzoEfuJMS8+dLTBDqPZ7N8686w/IJEjIZC88G0wA9O3NL
 AuKQ==
X-Gm-Message-State: AGi0PuYQm6gnWOJPEFWTAHi0qsZIsG7N/LDtSY2n55BdEBzdRm9LxSHL
 JIc4hb8luhmPQCHzL7gF/WQ=
X-Google-Smtp-Source: APiQypL3517W7VXqyWK/MyoCt7QLY7v2y02Pt9oWaxLF1O1xCjZ20NKtMBjdZL4TDreUD3gYbuTGag==
X-Received: by 2002:a63:ee4f:: with SMTP id n15mr2643689pgk.149.1587623385905; 
 Wed, 22 Apr 2020 23:29:45 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:ec9f:3a3e:8aef:64e5?
 ([2601:647:4802:9070:ec9f:3a3e:8aef:64e5])
 by smtp.gmail.com with ESMTPSA id w2sm1502970pfc.194.2020.04.22.23.29.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 23:29:45 -0700 (PDT)
Subject: Re: [PATCH nvme-cli] nvme: allow addr family to recognize loop
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200421211254.17417-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5bc40a34-984b-8fae-3f76-5d4c997b567d@grimberg.me>
Date: Wed, 22 Apr 2020 23:29:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200421211254.17417-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_232946_704918_FB7F151B 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
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
Cc: kbusch@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
