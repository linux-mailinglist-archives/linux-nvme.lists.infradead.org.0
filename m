Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF98073676
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 20:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=OMg8XAQZn7thQDLKGwpAAoAWi
	V+veAlzHfbPdVMdfQCG8rt3d+snEGC4ZNxtmL7GsAu1reRfEHJ3T3fJx5qxUgueVC090+AISqcIVq
	q3RtE+XA1pZcXBgnEvyxQRyzwVtW8KklFo2VCSmKB0ReWfim3ExLgQjrxxdEwjONPQ2AKCcoef+px
	i6IFYDr7jFF7kQK9ByVczGUn+12HyY0znfbPRvEEBDmq6yRdy1EzjVL0FrA0SqNmt0HFvGybK5+cL
	jYCeCKN8+EgEn77Xy8/n3+rOB8VQS5IkWAHFJ/MMgmRjBlV5D3icJCm+1mFnDGuqYyuUOp1CTL7cc
	5CMSTrnGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLtL-0007FB-Ja; Wed, 24 Jul 2019 18:21:31 +0000
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLtB-0007DE-21
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 18:21:22 +0000
Received: by mail-pg1-f171.google.com with SMTP id k189so2584554pgk.13
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 11:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=XohMO3b/h92KP61szZUqWebcdHions+sJtyIYJog1Ny/cyFvGv8Gt7FG2LgQWCLL5A
 Q8wiDU9+puMAoyLi5nsTI0nQY1kr3tUCclMRmywvgX370BKmZTyP0lJ3Y21vctVD8gGc
 /ji8M1S10jfOYielYeXR3Lc5iwPoz3eBXhPDu8Pudy3MpkaXApU+uEo1u6JSaCxGPv6D
 Egp7lzVbVC7NExrEsH8L/z6rJT1IwwN7uflV19jFJV4aiyxyW2kzbs5+HV4Pzz9Mia1c
 7WkaN5jGSaJwSiLu+1g7Z8ahy14pcvFGUdq2jMaxGcoVQ2gawwg23wvRrKtFD5hx9DnO
 WCdQ==
X-Gm-Message-State: APjAAAVoNv1vCFGuF4Zyz8wqLrELcADRSwvCESgIve5KdoTU6QbpwgCQ
 3iSr+J5AjIpYpP9iNYxoPBYK6YcL
X-Google-Smtp-Source: APXvYqwG2ez55PvfiMyu1DysicT76Tjuh7JuRXfqsgcgHHNxldk5mwN3v6aT5+N0gvXn4Vzp+RaaVw==
X-Received: by 2002:a62:8643:: with SMTP id x64mr12985881pfd.7.1563992478966; 
 Wed, 24 Jul 2019 11:21:18 -0700 (PDT)
Received: from [10.8.0.6] (162-195-240-247.lightspeed.sntcca.sbcglobal.net.
 [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id a12sm85667410pje.3.2019.07.24.11.21.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 11:21:18 -0700 (PDT)
Subject: Re: [PATCH] nvme: trace bio completion
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190724134755.96315-1-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a183103a-41db-6cb6-22ce-c2514dfd3686@grimberg.me>
Date: Wed, 24 Jul 2019 11:21:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724134755.96315-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_112121_100886_8042AA5F 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
