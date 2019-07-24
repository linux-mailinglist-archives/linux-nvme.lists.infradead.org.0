Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2309E74250
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 01:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gi8Tx+/TwmEy6FoTA1WFAI+NcLDwhoEoN/GfejDEMG0=; b=AGcKJM2FCtZGXhtce2YICcooN
	uRweNoQ4MXfA62cMv3nFpWwYsvIcygMmWiNZdKSOrowsIrQHJbRak7yn5D9tekSU8bOlRSlpgWfVQ
	0+ff7JXYUkIuIG+rd3L4VrCABb/DbjNtihf/F0uJCqdYiJhrZCPLhqAB9KeWxw2LBfAgrohLCSx45
	w9ZBPkbQnkmBVRCCACMmch8GDvHjxjPH42L6IzPmPS6L34ILG79fg46+58GmF8B2QnozIuysOzH13
	fzaWLeC5kwLsKjhTldazykuohhnUUBEOmW4nHrcyksGzepwFri1bcvai3kD43p8pMUSZ+ZOgdbvhx
	7uZhzo3WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqQww-0005Fg-PT; Wed, 24 Jul 2019 23:45:35 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqQwk-0005F0-80
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 23:45:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so21699259pff.9
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 16:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=YeYzP0aVnGDeQ86M2T8zWi41sJ4jDpOPkvOSZpo9Fhw=;
 b=Ib1sg7k477kslDTos09VSlFhljmWK74Puxt++jyhok2m+gFPjwuT1W/hqZCGuaiVNq
 StcoN2A18q78ehhxa2TzdT4b9QDYTlNeORpkY6whFbFbeBlLuoPxilqRDSUkc+TkTmad
 FEnYZOVlOilVtt4Ndgv12gGiZmtdOcul7FBHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YeYzP0aVnGDeQ86M2T8zWi41sJ4jDpOPkvOSZpo9Fhw=;
 b=BZWkS7Atsa/iGtEyd4/zPtaBJMaKU0FBHpZjNFglEZaE0E7AOIiAzJJL2OA/21Q4H/
 OBE+sdSJK1rwWD+J9Y7NPjH6uCGmx55RDpAO7WsrnaTfxWGUt94FGc2Mwi6jFosqv5Bj
 10iidxISWyovO9df5UQoBLmXwF1/ZNRZZhjVfv80ZW2iFG2Mceu8esCb3OB81KFCg/Ka
 5zf2T3ErX+To7pNPlbYFYhfKtWSOXb5wTEf0KsT9gWxNucQCnHAcSJZ19ljZTD8hbMeQ
 qNO6Y6Mn7kkIbx8CkpM0q8o2poC3OFFkrGw5puJ35l+sUeFIBTVztv8oWRbPZ+wU54k+
 3d8A==
X-Gm-Message-State: APjAAAVFtkilssIkFEpnOrzYVq706GvurSTOSuEj8AHUf+TWmclto11N
 9UQARme22zIwWb1tbI/N40P6RiPX3qg=
X-Google-Smtp-Source: APXvYqwg5skY8F01GNfkXzCWyYBKe0wx5bobULq+VoDjs2YRZax8QJQ94o2++uDeWMYdjt4nZp3LqQ==
X-Received: by 2002:a65:5cca:: with SMTP id b10mr85548397pgt.365.1564011921100; 
 Wed, 24 Jul 2019 16:45:21 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d8sm44432388pgh.45.2019.07.24.16.45.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 16:45:20 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
 <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
 <d5b4ef61-cf1d-ce9c-1bd0-7f372f874320@broadcom.com>
 <2297e9f3-4a9d-e759-5633-aeefe736b09c@grimberg.me>
 <1215e814-30f7-85e6-a9b9-fd7d2c725654@broadcom.com>
 <642f1d36-f0bc-7e5d-7c49-63238bbc058c@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e8a94912-61d2-8cd5-d487-0bd4f48be69b@broadcom.com>
Date: Wed, 24 Jul 2019 16:45:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <642f1d36-f0bc-7e5d-7c49-63238bbc058c@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_164522_301271_54E0B6F9 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yNC8yMDE5IDExOjE1IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+Pj4+PiArIyBF
dmVudHMgZnJvbSBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVycyBvciBudm1lLWZjIAo+
Pj4+Pj4gdHJhbnNwb3J0IGV2ZW50cwo+Pj4+Pj4gK0FDVElPTj09ImNoYW5nZSIsIFNVQlNZU1RF
TT09Im52bWUiLCBFTlZ7TlZNRV9FVkVOVH09PSJkaXNjb3ZlcnkiLFwKPj4+Pj4+ICvCoCBFTlZ7
TlZNRV9DVFJMX05BTUV9PT0iKiIsIEVOVntOVk1FX1RSVFlQRX09PSIqIiwgCj4+Pj4+PiBFTlZ7
TlZNRV9UUkFERFJ9PT0iKiIsIFwKPj4+Pj4+ICvCoCBFTlZ7TlZNRV9UUlNWQ0lEfT09IioiLCBF
TlZ7TlZNRV9IT1NUX1RSQUREUn09PSIqIiwgXAo+Pj4+Pj4gK8KgIFJVTis9Ii91c3IvYmluL3N5
c3RlbWN0bCAtLW5vLWJsb2NrIHN0YXJ0IAo+Pj4+Pj4gbnZtZi1jb25uZWN0QC0tZGV2aWNlPSRl
bnZ7TlZNRV9DVFJMX05BTUV9XHQtLXRyYW5zcG9ydD0kZW52e05WTUVfVFJUWVBFfVx0LS10cmFk
ZHI9JGVudntOVk1FX1RSQUREUn1cdC0tdHJzdmNpZD0kZW52e05WTUVfVFJTVkNJRH1cdC0taG9z
dC10cmFkZHI9JGVudntOVk1FX0hPU1RfVFJBRERSfS5zZXJ2aWNlIiAKPj4+Pj4+Cj4+Pj4+Cj4+
Pj4+IEphbWVzLCBzaG91bGRuJ3QgdGhpcyBiZSAvYmluL3N5c3RlbWN0bD8KPj4+Pgo+Pj4+IEkg
ZG9uJ3QgYmVsaWV2ZSBzby7CoMKgIE9uIHRoZSBkaXN0cm9zIEkgY2hlY2tlZCwgL2Jpbi9zeXN0
ZW1jdGwgaXMgYSAKPj4+PiBzb2Z0IG9yIGhhcmQgbGluayB0byAvdXNyL2Jpbi9zeXN0ZW1jdGwK
Pj4+Cj4+PiBOb3QgYWx3YXlzIHRoZSBjYXNlLiBMZXRzIGNoYW5nZSB0aGF0IHRvIC9iaW4vc3lz
dGVtY3RsLgo+Pgo+PiBJIGhhdmUgbm8gcHJvYmxlbSBjaGFuZ2luZyBpdCwgYnV0IGFtIHdvbmRl
cmluZyB3aGF0IHJlc291cmNlIGlzIAo+PiBnaXZpbmcgeW91IHRoZSByZWZlcmVuY2UgbG9jYXRp
b25zLiBJIGNhbid0IGZpbmQgYW55dGhpbmcgdGhhdCAKPj4gYWN0dWFsbHkgc3BlY2lmaWVzIHRo
ZSBsb2NhdGlvbiB3aXRoIHNvbWUgaGF2aW5nIC9iaW4gYW5kIG90aGVycyAKPj4gL3Vzci9iaW4u
IFRoZSBvdGhlciBmaWxlcyBzZWVtIHRvIGxlYW4gdG93YXJkIGEgcHJlZmVyZW5jZSBvZiAvdXNy
L2Jpbi4KPgo+IEknbSBydW5uaW5nIHVidW50dSBhbmQgc3lzdGVtY3RsIGlzIHVuZGVyIC9iaW4s
IG5vdCBhIHNvZnRsaW5rLgo+Cj4gSSB0aGluayB3ZSBzaG91bGQgYmUgc2FmZSBvbiByZWx5aW5n
IHRoYXQgc3lzdGVtY3RsIGlzIHVuZGVyIC9iaW4uLgo+Cj4gYnR3LCByZW1pbmQgbWUsIG11c3Qg
d2UgY2FsbCB3aXRoIGFic29sdXRlIHBhdGggaW4gdGhlIHJ1bGVzPwoKb2suCgpJIHJlYWxseSBk
b24ndCBrbm93LiBJIGFzc3VtZSwgZnJvbSBhIHN5c2FkbSBwZXJzcGVjdGl2ZSwgZnVsbCBuYW1l
IGlzIApiZXR0ZXIgdGhhbiBlbnZpcm9ubWVudC1iYXNlZC4gQnV0LCBJIHBhaXJlZCBtb3N0IG9m
IHRoZSBvdGhlciBzY3JpcHRzIApiYWNrIHRvIG5vIHBhdGggc28gd2UgY2FuIHByb2JhYmx5IGRv
IHNvIGhlcmUuCgpJJ2xsIGRvIGEgcmVwb3N0LiBsZXQgbWUga25vdyBpZiB0aGVyZSdzIGFueXRo
aW5nIGVsc2UgYmVzaWRlcyB0aGlzIGl0ZW0gCnRoYXQgeW91IHdhbnQgdG8gY2hhbmdlLgoKLS0g
amFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
