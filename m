Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF0586E21
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H4tD8DIVxvI1uWc8LmCnKBqUwLU9Vz2/ggjrmIm6Fqk=; b=DKJAI7R36nM4s8fXe5TBNlyP6
	pFt3GMijyXKMdb67ZvLRxXlIsVOJOaAh7p0T8cMWM0blFvcVwEnsbd5rmxtdWa2E1ArDRN7GSs/Gz
	///ezgU/zEjaTb8BkIWq5UZIqTXfpuN5SIn7nZUPgK0l1jdoo2niVFPc+UnGXvThdkTaodronSWcD
	8ivgu2aIPtvZNivF7DbQPtZOc6vhbkp4rhlglwW7wfIrNru7wYxD8JWDiU8YgDxxLnE3qKtjvtXRu
	dOPAj4pqyOMQo8tnbs0KBokvu7Vbyz53ffGVRvdo8RSGym/eexx21vkXll1Yz911UdjUnP0WqGRoH
	NRgySPtYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvs8L-0000A6-1L; Thu, 08 Aug 2019 23:47:49 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvs8G-00009S-4J
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:47:44 +0000
Received: by mail-ot1-f68.google.com with SMTP id x21so32496092otq.12
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:47:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TF8VOyT4f1F6jbxkTGghvLa91loBuPWL1QUymHwrJTs=;
 b=fD/RkhTBeFZ3wjG2nnc8nESfA2MXB2GEyRQLb5vj6GAKUoQsFfiHYdekVYfqANa5XN
 CeeGIrg4qBKIKPtSkrxjYeIkZIaYHduxpnmaGsOJ1KduMddEdoNXr/BU7VL3Hd2IHVd+
 u22+fd+W1uhhUrh6H/jlYCTYb7mZQCmAcPw4Me9abA0AMKgI4M1NdovfXRhaAjv6OUhs
 sjYqteqJGvp1/lhwLofQFOCVeoeaqNqc+5YOAcTelfzjL3psWVSqzxXCqtdrKJMbUTih
 +EFNzBLTQs2YEQfaKFPW0u76DKXuk8x+WOey33rXP5YCCR4L3C7RFeHhYSIWMTnsUW/+
 bulw==
X-Gm-Message-State: APjAAAXhBy+1+6cKbf8qTcnXuoKEX/HxlCL3zehj+1x+LkUIM0AYUHSN
 I3sQ7roIZug9x4xDyv+kHCw=
X-Google-Smtp-Source: APXvYqxxKphOEbVNlT/1BXfFwQZmRC6+oTwzdj69dww822G7VXfBmiR5GQ4tw98mlSP1YkWrgbuaoA==
X-Received: by 2002:a9d:6c17:: with SMTP id f23mr13891246otq.174.1565308063495; 
 Thu, 08 Aug 2019 16:47:43 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id q20sm31946948otm.32.2019.08.08.16.47.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:47:42 -0700 (PDT)
Subject: Re: [PATCH v4 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190808232536.4258-1-sagi@grimberg.me>
 <20190808232536.4258-8-sagi@grimberg.me>
Message-ID: <02ddf34b-b502-9ae0-6e00-144b72e00eef@grimberg.me>
Date: Thu, 8 Aug 2019 16:47:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808232536.4258-8-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_164744_170072_0D0790E8 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> If a controller reset is racing with a namespace revalidation, the
> revalidation (admin) I/O will surely fail, but we should not remove the
> namespace as we will execute the I/O when the controller is back up.
> Same for spurious allocation errors (return -ENOMEM).
> 
> Fix this by checking the specific error code that revalidate_disk
> returns, and if it is a transient error (for example ENOLINK correlates
> to BLK_STS_TRANSPORT or ENOMEM correlates to BLK_STS_RESOURCE or an
> allocation failure), do not remove the namespace as it will either
> recover when the controller is back up and schedule a subsequent scan,
> or the controller is going away and the namespaces will be removed anyways.
> 
> This fixes a hang namespace scanning racing with a controller reset and
> also sporious I/O errors in path failover coditions where the
> controller reset is racing with the namespace scan work with multipath
> enabled.
> 
> Reported-by: Hannes Reinecke  <hare@suse.de>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> 
> 2
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Woops... squash left-over...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
